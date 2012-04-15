.class final Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
.super Ljava/lang/Object;
.source "CachedBluetoothDeviceManager.java"


# instance fields
.field private final mCachedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public static onDeviceDisappeared(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z
    .registers 4
    .parameter "cachedDevice"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method


# virtual methods
.method addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .registers 6
    .parameter "adapter"
    .parameter "profileManager"
    .parameter "device"

    .prologue
    .line 86
    new-instance v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 88
    .local v0, newDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-object v0
.end method

.method findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .registers 5
    .parameter "device"

    .prologue
    .line 69
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 70
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 74
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public declared-synchronized getCachedDevicesCopy()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .registers 4
    .parameter "device"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 100
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_b

    .line 101
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 109
    :cond_a
    :goto_a
    return-object v1

    .line 104
    :cond_b
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_a

    .line 109
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method public declared-synchronized onBtClassChanged(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .parameter "device"

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 125
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_a

    .line 126
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refreshBtClass()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 128
    :cond_a
    monitor-exit p0

    return-void

    .line 124
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :catchall_c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .parameter "device"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 53
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_9

    .line 54
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refreshName()V

    .line 56
    :cond_9
    return-void
.end method

.method public declared-synchronized onScanningStateChanged(Z)V
    .registers 5
    .parameter "started"

    .prologue
    .line 113
    monitor-enter p0

    if-nez p1, :cond_5

    .line 121
    :cond_3
    monitor-exit p0

    return-void

    .line 117
    :cond_5
    :try_start_5
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_d
    if-ltz v1, :cond_3

    .line 118
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 119
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1e

    .line 117
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 113
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v1           #i:I
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onUuidChanged(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .parameter "device"

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 132
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_a

    .line 133
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onUuidChanged()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 135
    :cond_a
    monitor-exit p0

    return-void

    .line 131
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :catchall_c
    move-exception v1

    monitor-exit p0

    throw v1
.end method
