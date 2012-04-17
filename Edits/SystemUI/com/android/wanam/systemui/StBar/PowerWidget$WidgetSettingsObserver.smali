.class Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;
.super Landroid/database/ContentObserver;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wanam/systemui/StBar/PowerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetSettingsObserver"
.end annotation


# instance fields
.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;


# direct methods
.method public constructor <init>(Lcom/android/wanam/systemui/StBar/PowerWidget;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;

    #getter for: Lcom/android/wanam/systemui/StBar/PowerWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/wanam/systemui/StBar/PowerWidget;->access$200(Lcom/android/wanam/systemui/StBar/PowerWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;->mUri:Landroid/net/Uri;

    const-string v1, "expanded_widget_buttons"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;

    invoke-virtual {v0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->setupWidget()V

    :cond_13
    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/wanam/systemui/StBar/PowerButton;->handleOnChangeUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;

    invoke-virtual {v0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->updateWidget()V

    return-void
.end method

.method public unobserve()V
    .locals 2

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;

    #getter for: Lcom/android/wanam/systemui/StBar/PowerWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/wanam/systemui/StBar/PowerWidget;->access$200(Lcom/android/wanam/systemui/StBar/PowerWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
