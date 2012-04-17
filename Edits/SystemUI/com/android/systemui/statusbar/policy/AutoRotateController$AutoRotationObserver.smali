.class Lcom/android/systemui/statusbar/policy/AutoRotateController$AutoRotationObserver;
.super Landroid/database/ContentObserver;
.source "AutoRotateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AutoRotateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRotationObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AutoRotateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/AutoRotateController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController$AutoRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController$AutoRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController$AutoRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    #calls: Lcom/android/systemui/statusbar/policy/AutoRotateController;->getAutoRotation()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->access$100(Lcom/android/systemui/statusbar/policy/AutoRotateController;)Z

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->access$002(Lcom/android/systemui/statusbar/policy/AutoRotateController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController$AutoRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    #getter for: Lcom/android/systemui/statusbar/policy/AutoRotateController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->access$200(Lcom/android/systemui/statusbar/policy/AutoRotateController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController$AutoRotationObserver;->this$0:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    #getter for: Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->access$000(Lcom/android/systemui/statusbar/policy/AutoRotateController;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    return-void

    :cond_1e
    const/4 v0, 0x2

    goto :goto_1a
.end method
