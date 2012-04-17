.class public Lcom/android/wanam/systemui/StBar/SyncButton;
.super Lcom/android/wanam/systemui/StBar/PowerButton;
.source "SyncButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncButton"


# instance fields
.field private mSyncObserver:Landroid/content/SyncStatusObserver;

.field private mSyncObserverHandle:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerButton;-><init>()V

    new-instance v0, Lcom/android/wanam/systemui/StBar/SyncButton$1;

    invoke-direct {v0, p0}, Lcom/android/wanam/systemui/StBar/SyncButton$1;-><init>(Lcom/android/wanam/systemui/StBar/SyncButton;)V

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mSyncObserver:Landroid/content/SyncStatusObserver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    const-string v0, "toggleSync"

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getBackgroundDataState(Landroid/content/Context;)Z
    .locals 2

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method private static getSyncState(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/android/wanam/systemui/StBar/SyncButton;->getBackgroundDataState(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    :goto_d
    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_d
.end method


# virtual methods
.method protected getText()I
    .locals 1

    const v0, 0x30b0048

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected setupButton(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/wanam/systemui/StBar/PowerButton;->setupButton(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mView:Landroid/view/View;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    if-eqz v0, :cond_1b

    const-string v0, "SyncButton"

    const-string v1, "Unregistering sync state listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mView:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    if-nez v0, :cond_1a

    const-string v0, "SyncButton"

    const-string v1, "Registering sync state listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mSyncObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mSyncObserverHandle:Ljava/lang/Object;

    goto :goto_1a
.end method

.method protected toggleState()V
    .locals 6

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-static {v2}, Lcom/android/wanam/systemui/StBar/SyncButton;->getBackgroundDataState(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    if-nez v0, :cond_21

    if-nez v3, :cond_21

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    invoke-static {v5}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :cond_21
    if-nez v0, :cond_28

    if-eqz v3, :cond_28

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    :cond_28
    if-eqz v0, :cond_2f

    if-nez v3, :cond_2f

    invoke-static {v5}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :cond_2f
    if-eqz v0, :cond_37

    if-eqz v3, :cond_37

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :cond_37
    return-void
.end method

.method protected updateState()V
    .locals 1

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wanam/systemui/StBar/SyncButton;->getSyncState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    const v0, 0x3020091

    iput v0, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mIcon:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mState:I

    :goto_14
    return-void

    :cond_15
    const v0, 0x3020090

    iput v0, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mIcon:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wanam/systemui/StBar/SyncButton;->mState:I

    goto :goto_14
.end method
