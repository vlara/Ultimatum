.class final Lcom/android/settings/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAfterPairing:Z

.field private mConnectAttempted:J

.field private final mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIsConnectingErrorPossible:Z

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mLocalNapRoleConnected:Z

.field private mMapPermissionChoice:I

.field private mName:Ljava/lang/String;

.field private mPhonebookPermissionChoice:I

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:S

.field private mVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .parameter "context"
    .parameter "adapter"
    .parameter "profileManager"
    .parameter "device"

    .prologue
    .line 158
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 159
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 161
    iput-object p3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 162
    iput-object p4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 164
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 165
    return-void
.end method

.method private connectAutoConnectableProfiles()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 228
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v2

    if-nez v2, :cond_8

    .line 240
    :cond_7
    return-void

    .line 232
    :cond_8
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 234
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 235
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 236
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 237
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_10
.end method

.method private connectInt(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .registers 4
    .parameter "profile"

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_7

    .line 267
    :goto_6
    return-void

    .line 258
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 261
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Command sent successfully:CONNECT "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 266
    :cond_17
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Failed to connect "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private connectWithoutResettingTimer(Z)V
    .registers 8
    .parameter "connectAllProfiles"

    .prologue
    .line 199
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 200
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    move-result v3

    if-nez v3, :cond_16

    .line 203
    const-string v3, "CachedBluetoothDevice"

    const-string v4, "No profiles. Maybe we will connect later"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_15
    :goto_15
    return-void

    .line 209
    :cond_16
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, preferredProfiles:I
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 213
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    if-eqz p1, :cond_42

    invoke-interface {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 214
    :goto_34
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 215
    add-int/lit8 v1, v1, 0x1

    .line 216
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_20

    .line 213
    :cond_42
    invoke-interface {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_34

    .line 220
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_49
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preferred profiles = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-nez v1, :cond_15

    .line 223
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectAutoConnectableProfiles()V

    goto :goto_15
.end method

.method private dispatchAttributesChanged()V
    .registers 5

    .prologue
    .line 568
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 569
    :try_start_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;

    .line 570
    .local v0, callback:Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
    invoke-interface {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V

    goto :goto_9

    .line 572
    .end local v0           #callback:Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 573
    return-void
.end method

.method private ensurePaired()Z
    .registers 3

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 272
    const/4 v0, 0x0

    .line 274
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private fetchBtClass()V
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 449
    return-void
.end method

.method private fetchMapPermissionChoice()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 662
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_map_permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 664
    .local v0, preference:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mMapPermissionChoice:I

    .line 666
    return-void
.end method

.method private fetchName()V
    .registers 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 379
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 381
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Device has no name (yet), use address: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_1f
    return-void
.end method

.method private fetchPhonebookPermissionChoice()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 643
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 645
    .local v0, preference:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    .line 647
    return-void
.end method

.method private fillData()V
    .registers 2

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 340
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 341
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 342
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchPhonebookPermissionChoice()V

    .line 343
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchMapPermissionChoice()V

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 346
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 347
    return-void
.end method

.method private updateProfiles()Z
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 452
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v6

    .line 453
    .local v6, uuids:[Landroid/os/ParcelUuid;
    if-nez v6, :cond_a

    .line 470
    :cond_9
    :goto_9
    return v7

    .line 455
    :cond_a
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 456
    .local v4, localUuids:[Landroid/os/ParcelUuid;
    if-eqz v4, :cond_9

    .line 458
    iget-object v7, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    iget-object v9, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-virtual {v7, v6, v4, v8, v9}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 461
    const-string v7, "CachedBluetoothDevice"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updating profiles for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v7, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 464
    .local v1, bluetoothClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v1, :cond_5d

    const-string v7, "CachedBluetoothDevice"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_5d
    const-string v7, "CachedBluetoothDevice"

    const-string v8, "UUID:"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    move-object v0, v6

    .local v0, arr$:[Landroid/os/ParcelUuid;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_67
    if-ge v2, v3, :cond_86

    aget-object v5, v0, v2

    .line 467
    .local v5, uuid:Landroid/os/ParcelUuid;
    const-string v7, "CachedBluetoothDevice"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 470
    .end local v5           #uuid:Landroid/os/ParcelUuid;
    :cond_86
    const/4 v7, 0x1

    goto :goto_9
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I
    .registers 8
    .parameter "another"

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 598
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1a

    move v4, v2

    :goto_12
    sub-int v0, v1, v4

    .line 599
    .local v0, comparison:I
    if-eqz v0, :cond_1c

    move v1, v0

    .line 615
    :goto_17
    return v1

    .end local v0           #comparison:I
    :cond_18
    move v1, v3

    .line 598
    goto :goto_b

    :cond_1a
    move v4, v3

    goto :goto_12

    .line 602
    .restart local v0       #comparison:I
    :cond_1c
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v5, :cond_30

    move v1, v2

    :goto_23
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v5, :cond_32

    move v4, v2

    :goto_2a
    sub-int v0, v1, v4

    .line 604
    if-eqz v0, :cond_34

    move v1, v0

    goto :goto_17

    :cond_30
    move v1, v3

    .line 602
    goto :goto_23

    :cond_32
    move v4, v3

    goto :goto_2a

    .line 607
    :cond_34
    iget-boolean v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v1, :cond_43

    move v1, v2

    :goto_39
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v4, :cond_45

    :goto_3d
    sub-int v0, v1, v2

    .line 608
    if-eqz v0, :cond_47

    move v1, v0

    goto :goto_17

    :cond_43
    move v1, v3

    .line 607
    goto :goto_39

    :cond_45
    move v2, v3

    goto :goto_3d

    .line 611
    :cond_47
    iget-short v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int v0, v1, v2

    .line 612
    if-eqz v0, :cond_51

    move v1, v0

    goto :goto_17

    .line 615
    :cond_51
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_17
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method connect(Z)V
    .registers 4
    .parameter "connectAllProfiles"

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_7

    .line 189
    :goto_6
    return-void

    .line 187
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 188
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    goto :goto_6
.end method

.method connectProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .registers 4
    .parameter "profile"

    .prologue
    .line 248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 251
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 252
    return-void
.end method

.method disconnect()V
    .registers 4

    .prologue
    .line 168
    iget-object v2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 169
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_6

    .line 171
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_16
    return-void
.end method

.method disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .registers 4
    .parameter "profile"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 177
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Command sent successfully:DISCONNECT "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_f
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 582
    if-eqz p1, :cond_6

    instance-of v0, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_8

    .line 583
    :cond_6
    const/4 v0, 0x0

    .line 585
    .end local p1
    :goto_7
    return v0

    .restart local p1
    :cond_8
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method getBondState()I
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method getBtClass()Landroid/bluetooth/BluetoothClass;
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method getConnectableProfiles()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v0, connectableProfiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 544
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 545
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 548
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_21
    return-object v0
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method getMapPermissionChoice()I
    .registers 2

    .prologue
    .line 627
    iget v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mMapPermissionChoice:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getPhonebookPermissionChoice()I
    .registers 2

    .prologue
    .line 623
    iget v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    return v0
.end method

.method getProfileConnectionState(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I
    .registers 5
    .parameter "profile"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 331
    :cond_c
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 332
    .local v0, state:I
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .end local v0           #state:I
    :cond_1b
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method getProfiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getRemovedProfiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isBusy()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 434
    iget-object v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 435
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 436
    .local v2, status:I
    if-eq v2, v3, :cond_1c

    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    .line 441
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .end local v2           #status:I
    :cond_1c
    :goto_1c
    return v3

    :cond_1d
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1c

    const/4 v3, 0x0

    goto :goto_1c
.end method

.method isConnected()Z
    .registers 5

    .prologue
    .line 417
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 418
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 419
    .local v2, status:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 420
    const/4 v3, 0x1

    .line 424
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .end local v2           #status:I
    :goto_1a
    return v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method isConnectedProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Z
    .registers 4
    .parameter "profile"

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    .line 429
    .local v0, status:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method onBondingDockConnect()V
    .registers 2

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 195
    return-void
.end method

.method onBondingStateChanged(I)V
    .registers 4
    .parameter "bondState"

    .prologue
    const/4 v1, 0x0

    .line 506
    const/16 v0, 0xa

    if-ne p1, v0, :cond_12

    .line 507
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 508
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 509
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 510
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setMapPermissionChoice(I)V

    .line 513
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 515
    const/16 v0, 0xc

    if-ne p1, v0, :cond_26

    .line 516
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    .line 521
    :cond_24
    :goto_24
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 523
    :cond_26
    return-void

    .line 518
    :cond_27
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    if-eqz v0, :cond_24

    .line 519
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_24
.end method

.method onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V
    .registers 6
    .parameter "profile"
    .parameter "newProfileState"

    .prologue
    .line 130
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfileStateChanged: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newProfileState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/4 v0, 0x2

    if-ne p2, v0, :cond_52

    .line 136
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 137
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    instance-of v0, p1, Lcom/android/settings/bluetooth/PanProfile;

    if-eqz v0, :cond_51

    check-cast p1, Lcom/android/settings/bluetooth/PanProfile;

    .end local p1
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    .line 153
    :cond_51
    :goto_51
    return-void

    .line 145
    .restart local p1
    :cond_52
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v0, :cond_51

    instance-of v0, p1, Lcom/android/settings/bluetooth/PanProfile;

    if-eqz v0, :cond_51

    move-object v0, p1

    check-cast v0, Lcom/android/settings/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_51

    if-nez p2, :cond_51

    .line 148
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Removing PanProfile from device after NAP disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_51
.end method

.method onUuidChanged()V
    .registers 7

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 489
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUuidChanged: Time since last connect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-wide v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3b

    .line 500
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    .line 502
    :cond_3b
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 503
    return-void
.end method

.method refresh()V
    .registers 1

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 387
    return-void
.end method

.method refreshBtClass()V
    .registers 1

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 479
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 480
    return-void
.end method

.method refreshName()V
    .registers 1

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 372
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 373
    return-void
.end method

.method registerCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 557
    :try_start_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 558
    monitor-exit v1

    .line 559
    return-void

    .line 558
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .registers 3
    .parameter "btClass"

    .prologue
    .line 526
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_b

    .line 527
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 528
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 530
    :cond_b
    return-void
.end method

.method setMapPermissionChoice(I)V
    .registers 6
    .parameter "permissionChoice"

    .prologue
    .line 650
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_map_permission"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 652
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1e

    .line 653
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 657
    :goto_18
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 658
    iput p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mMapPermissionChoice:I

    .line 659
    return-void

    .line 655
    :cond_1e
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_18
.end method

.method setName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 361
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 366
    :goto_16
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 368
    :cond_19
    return-void

    .line 363
    :cond_1a
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    goto :goto_16
.end method

.method setPhonebookPermissionChoice(I)V
    .registers 6
    .parameter "permissionChoice"

    .prologue
    .line 631
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth_phonebook_permission"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 633
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1e

    .line 634
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 638
    :goto_18
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 639
    iput p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    .line 640
    return-void

    .line 636
    :cond_1e
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_18
.end method

.method setRssi(S)V
    .registers 3
    .parameter "rssi"

    .prologue
    .line 405
    iget-short v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_9

    .line 406
    iput-short p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 407
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 409
    :cond_9
    return-void
.end method

.method setVisible(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_9

    .line 395
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 396
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 398
    :cond_9
    return-void
.end method

.method startPairing()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 280
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 281
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    .line 284
    :cond_e
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    if-nez v1, :cond_18

    .line 285
    const/4 v0, 0x0

    .line 289
    :goto_17
    return v0

    .line 288
    :cond_18
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    goto :goto_17
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unpair()V
    .registers 6

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    .line 305
    .local v1, state:I
    const/16 v3, 0xb

    if-ne v1, v3, :cond_10

    .line 306
    iget-object v3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 309
    :cond_10
    const/16 v3, 0xa

    if-eq v1, v3, :cond_25

    .line 310
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 311
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_25

    .line 312
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v2

    .line 313
    .local v2, successful:Z
    if-eqz v2, :cond_26

    .line 316
    const-string v3, "CachedBluetoothDevice"

    const-string v4, "Command sent successfully:REMOVE_BOND "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v0           #dev:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #successful:Z
    :cond_25
    :goto_25
    return-void

    .line 321
    .restart local v0       #dev:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #successful:Z
    :cond_26
    const-string v3, "CachedBluetoothDevice"

    const-string v4, "Framework rejected command immediately:REMOVE_BOND "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method unregisterCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 563
    :try_start_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 564
    monitor-exit v1

    .line 565
    return-void

    .line 564
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
