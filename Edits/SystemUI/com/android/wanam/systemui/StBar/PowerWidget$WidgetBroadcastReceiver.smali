.class Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wanam/systemui/StBar/PowerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;


# direct methods
.method private constructor <init>(Lcom/android/wanam/systemui/StBar/PowerWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wanam/systemui/StBar/PowerWidget;Lcom/android/wanam/systemui/StBar/PowerWidget$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;-><init>(Lcom/android/wanam/systemui/StBar/PowerWidget;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;

    invoke-virtual {v0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->setupWidget()V

    :goto_11
    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;

    invoke-virtual {v0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->updateWidget()V

    return-void

    :cond_17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;

    #calls: Lcom/android/wanam/systemui/StBar/PowerWidget;->updateButtonLayoutWidth()V
    invoke-static {v0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->access$100(Lcom/android/wanam/systemui/StBar/PowerWidget;)V

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;->this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;

    invoke-virtual {v0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->setupWidget()V

    goto :goto_11

    :cond_2e
    invoke-static {p1, p2}, Lcom/android/wanam/systemui/StBar/PowerButton;->handleOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_11
.end method
