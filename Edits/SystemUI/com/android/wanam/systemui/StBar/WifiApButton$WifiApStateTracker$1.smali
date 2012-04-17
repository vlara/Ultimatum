.class Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker$1;
.super Landroid/os/AsyncTask;
.source "WifiApButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker;

.field final synthetic val$desiredState:Z

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker;Landroid/net/wifi/WifiManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker$1;->this$0:Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker;

    iput-object p2, p0, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean p3, p0, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker$1;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker$1;->val$desiredState:Z

    if-eqz v2, :cond_16

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    :cond_10
    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_16
    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v3, p0, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker$1;->val$desiredState:Z

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-string v2, "WifiAp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Async Setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/wanam/systemui/StBar/WifiApButton$WifiApStateTracker$1;->val$desiredState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method
