.class public Lcom/android/wanam/systemui/StBar/WifiApButton;
.super Lcom/android/wanam/systemui/StBar/PowerButton;
.source "WifiApButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wanam/systemui/StBar/WifiApButton$1;,
        Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker;
    }
.end annotation


# static fields
.field private static final sWifiApState:Lcom/android/wanam/systemui/StBar/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker;-><init>(Lcom/android/wanam/systemui/StBar/WifiApButton$1;)V

    sput-object v0, Lcom/android/wanam/systemui/StBar/WifiApButton;->sWifiApState:Lcom/android/wanam/systemui/StBar/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerButton;-><init>()V

    const-string v0, "toggleWifiAp"

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/WifiApButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getText()I
    .locals 1

    const v0, 0x30b003e

    return v0
.end method

.method protected handleLongClick()Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/WifiApButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/android/wanam/systemui/StBar/WifiApButton;->sWifiApState:Lcom/android/wanam/systemui/StBar/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/wanam/systemui/StBar/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected toggleState()V
    .locals 2

    sget-object v0, Lcom/android/wanam/systemui/StBar/WifiApButton;->sWifiApState:Lcom/android/wanam/systemui/StBar/StateTracker;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/WifiApButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wanam/systemui/StBar/StateTracker;->toggleState(Landroid/content/Context;)V

    return-void
.end method

.method protected updateState()V
    .locals 4

    const v3, 0x3020095

    const v2, 0x3020094

    sget-object v0, Lcom/android/wanam/systemui/StBar/WifiApButton;->sWifiApState:Lcom/android/wanam/systemui/StBar/StateTracker;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/WifiApButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wanam/systemui/StBar/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/wanam/systemui/StBar/WifiApButton;->mState:I

    iget v0, p0, Lcom/android/wanam/systemui/StBar/WifiApButton;->mState:I

    packed-switch v0, :pswitch_data_2e

    :goto_19
    :pswitch_19
    return-void

    :pswitch_1a
    iput v2, p0, Lcom/android/wanam/systemui/StBar/WifiApButton;->mIcon:I

    goto :goto_19

    :pswitch_1d
    iput v3, p0, Lcom/android/wanam/systemui/StBar/WifiApButton;->mIcon:I

    goto :goto_19

    :pswitch_20
    sget-object v0, Lcom/android/wanam/systemui/StBar/WifiApButton;->sWifiApState:Lcom/android/wanam/systemui/StBar/StateTracker;

    invoke-virtual {v0}, Lcom/android/wanam/systemui/StBar/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_2b

    iput v3, p0, Lcom/android/wanam/systemui/StBar/WifiApButton;->mIcon:I

    goto :goto_19

    :cond_2b
    iput v2, p0, Lcom/android/wanam/systemui/StBar/WifiApButton;->mIcon:I

    goto :goto_19

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_20
    .end packed-switch
.end method
