.class Lcom/android/wanam/systemui/StBar/PowerWidget$1;
.super Ljava/lang/Object;
.source "PowerWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wanam/systemui/StBar/PowerWidget;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;


# direct methods
.method constructor <init>(Lcom/android/wanam/systemui/StBar/PowerWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$1;->this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$1;->this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;

    #getter for: Lcom/android/wanam/systemui/StBar/PowerWidget;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->access$200(Lcom/android/wanam/systemui/StBar/PowerWidget;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_hide_onchange"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$1;->this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;

    #calls: Lcom/android/wanam/systemui/StBar/PowerWidget;->animateCollapse()V
    invoke-static {v0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->access$300(Lcom/android/wanam/systemui/StBar/PowerWidget;)V

    :cond_19
    return-void
.end method
