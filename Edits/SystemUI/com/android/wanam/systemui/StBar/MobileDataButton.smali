.class public Lcom/android/wanam/systemui/StBar/MobileDataButton;
.super Lcom/android/wanam/systemui/StBar/PowerButton;
.source "MobileDataButton.java"


# static fields
.field public static final MOBILE_DATA_CHANGED:Ljava/lang/String; = "com.android.internal.telephony.MOBILE_DATA_CHANGED"

.field public static STATE_CHANGE_REQUEST:Z = false

.field private static final TAG:Ljava/lang/String; = "MobileDataButton"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/wanam/systemui/StBar/MobileDataButton;->STATE_CHANGE_REQUEST:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerButton;-><init>()V

    const-string v0, "toggleMobileData"

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/MobileDataButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getDataRomingEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private static getDataState(Landroid/content/Context;)Z
    .locals 2

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getText()I
    .locals 1

    const v0, 0x30b003f

    return v0
.end method

.method protected handleLongClick()Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/MobileDataButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method public networkModeChanged(Landroid/content/Context;I)V
    .locals 2

    sget-boolean v1, Lcom/android/wanam/systemui/StBar/MobileDataButton;->STATE_CHANGE_REQUEST:Z

    if-eqz v1, :cond_13

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/wanam/systemui/StBar/MobileDataButton;->STATE_CHANGE_REQUEST:Z

    :cond_13
    return-void
.end method

.method protected toggleState()V
    .locals 4

    iget-object v3, p0, Lcom/android/wanam/systemui/StBar/MobileDataButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wanam/systemui/StBar/MobileDataButton;->getDataState(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_19

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :goto_18
    return-void

    :cond_19
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_18
.end method

.method protected updateState()V
    .locals 2

    const v1, 0x302007a

    sget-boolean v0, Lcom/android/wanam/systemui/StBar/MobileDataButton;->STATE_CHANGE_REQUEST:Z

    if-eqz v0, :cond_d

    iput v1, p0, Lcom/android/wanam/systemui/StBar/MobileDataButton;->mIcon:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/wanam/systemui/StBar/MobileDataButton;->mState:I

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/MobileDataButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wanam/systemui/StBar/MobileDataButton;->getDataState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    iput v1, p0, Lcom/android/wanam/systemui/StBar/MobileDataButton;->mIcon:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wanam/systemui/StBar/MobileDataButton;->mState:I

    const-string v0, "MobileDataButton"

    const-string v1, "Data Connection: on"

    invoke-static {v0, v1}, Lcom/android/wanam/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_26
    const v0, 0x3020079

    iput v0, p0, Lcom/android/wanam/systemui/StBar/MobileDataButton;->mIcon:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wanam/systemui/StBar/MobileDataButton;->mState:I

    const-string v0, "MobileDataButton"

    const-string v1, "Data Connection: off"

    invoke-static {v0, v1}, Lcom/android/wanam/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method
