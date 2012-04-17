.class final Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker;
.super Lcom/android/wanam/systemui/StBar/StateTracker;
.source "WifiApButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wanam/systemui/StBar/WifiApButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiApStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/StateTracker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wanam/systemui/StBar/WifiApButton$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker;-><init>()V

    return-void
.end method

.method private static wifiApStateToFiveState(I)I
    .locals 1

    packed-switch p0, :pswitch_data_e

    const/4 v0, 0x6

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_9
    const/4 v0, 0x4

    goto :goto_4

    :pswitch_b
    const/4 v0, 0x3

    goto :goto_4

    nop

    :pswitch_data_e
    .packed-switch 0xa
        :pswitch_9
        :pswitch_5
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    invoke-static {v1}, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker;->wifiApStateToFiveState(I)I

    move-result v1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x6

    goto :goto_12
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :goto_c
    return-void

    :cond_d
    const-string v2, "wifi_state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker;->wifiApStateToFiveState(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_c
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 3

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_12

    const-string v1, "WifiButton"

    const-string v2, "No wifiManager."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    return-void

    :cond_12
    new-instance v1, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker$1;-><init>(Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker;Landroid/net/wifi/WifiManager;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_11
.end method
