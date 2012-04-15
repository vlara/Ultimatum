.class Lcom/android/settings/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7c

    .line 69
    const-string v10, "level"

    invoke-virtual {p2, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 70
    .local v3, level:I
    const-string v10, "plugged"

    invoke-virtual {p2, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 71
    .local v5, plugged:I
    const-string v10, "invalid_charger"

    invoke-virtual {p2, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 73
    .local v2, invalidCharger:I
    const/16 v10, 0x50

    if-lt v3, v10, :cond_7d

    move v4, v8

    .line 74
    .local v4, levelOk:Z
    :goto_27
    if-eq v5, v8, :cond_2c

    const/4 v10, 0x2

    if-ne v5, v10, :cond_7f

    :cond_2c
    if-nez v2, :cond_7f

    move v6, v8

    .line 80
    .local v6, pluggedOk:Z
    :goto_2f
    iget-object v10, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/settings/CryptKeeperSettings;->access$000(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v10

    if-eqz v4, :cond_81

    if-eqz v6, :cond_81

    :goto_39
    invoke-virtual {v10, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 81
    iget-object v8, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;
    invoke-static {v8}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v10

    if-eqz v6, :cond_83

    move v8, v9

    :goto_45
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v8, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;
    invoke-static {v8}, Lcom/android/settings/CryptKeeperSettings;->access$200(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v10

    if-eqz v4, :cond_85

    move v8, v9

    :goto_51
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v8, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/settings/CryptKeeperSettings;->access$300(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v8, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v8}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v10, "device_policy"

    invoke-virtual {v8, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 88
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_7c

    .line 89
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->satisfyFIPSPassword()Z

    move-result v8

    if-eqz v8, :cond_87

    .line 90
    iget-object v7, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/settings/CryptKeeperSettings;->access$300(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v2           #invalidCharger:I
    .end local v3           #level:I
    .end local v4           #levelOk:Z
    .end local v5           #plugged:I
    .end local v6           #pluggedOk:Z
    :cond_7c
    :goto_7c
    return-void

    .restart local v2       #invalidCharger:I
    .restart local v3       #level:I
    .restart local v5       #plugged:I
    :cond_7d
    move v4, v7

    .line 73
    goto :goto_27

    .restart local v4       #levelOk:Z
    :cond_7f
    move v6, v7

    .line 74
    goto :goto_2f

    .restart local v6       #pluggedOk:Z
    :cond_81
    move v8, v7

    .line 80
    goto :goto_39

    :cond_83
    move v8, v7

    .line 81
    goto :goto_45

    :cond_85
    move v8, v7

    .line 82
    goto :goto_51

    .line 92
    .restart local v1       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_87
    iget-object v8, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    #getter for: Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/settings/CryptKeeperSettings;->access$000(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_7c
.end method
