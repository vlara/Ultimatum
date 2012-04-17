.class Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;
.super Landroid/database/ContentObserver;
.source "MobileDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MobileDataController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$100(Lcom/android/systemui/statusbar/policy/MobileDataController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$002(Lcom/android/systemui/statusbar/policy/MobileDataController;I)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$100(Lcom/android/systemui/statusbar/policy/MobileDataController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2c

    move v0, v1

    :cond_2c
    #setter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$202(Lcom/android/systemui/statusbar/policy/MobileDataController;Z)Z

    const-string v0, "STATUSBAR-MobileDataController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange: mMobileData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$200(Lcom/android/systemui/statusbar/policy/MobileDataController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAirPlaneMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$000(Lcom/android/systemui/statusbar/policy/MobileDataController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$300(Lcom/android/systemui/statusbar/policy/MobileDataController;)Landroid/widget/CompoundButton;

    move-result-object v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$300(Lcom/android/systemui/statusbar/policy/MobileDataController;)Landroid/widget/CompoundButton;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$200(Lcom/android/systemui/statusbar/policy/MobileDataController;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_74
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$400(Lcom/android/systemui/statusbar/policy/MobileDataController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-result-object v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$400(Lcom/android/systemui/statusbar/policy/MobileDataController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$200(Lcom/android/systemui/statusbar/policy/MobileDataController;)Z

    move-result v2

    if-eqz v2, :cond_8e

    :goto_8a
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    :cond_8d
    return-void

    :cond_8e
    const/4 v1, 0x2

    goto :goto_8a
.end method
