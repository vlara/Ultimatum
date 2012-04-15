.class Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BondStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .registers 2
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method

.method private showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8
    .parameter "context"
    .parameter "name"
    .parameter "reason"

    .prologue
    .line 318
    packed-switch p3, :pswitch_data_30

    .line 335
    :pswitch_3
    const-string v1, "BluetoothEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showUnbondMessage: Not displaying any message for reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :goto_1b
    return-void

    .line 320
    :pswitch_1c
    const v0, 0x7f0b01fc

    .line 338
    .local v0, errorMsg:I
    :goto_1f
    invoke-static {p1, p2, v0}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1b

    .line 323
    .end local v0           #errorMsg:I
    :pswitch_23
    const v0, 0x7f0b01fe

    .line 324
    .restart local v0       #errorMsg:I
    goto :goto_1f

    .line 326
    .end local v0           #errorMsg:I
    :pswitch_27
    const v0, 0x7f0b01fd

    .line 327
    .restart local v0       #errorMsg:I
    goto :goto_1f

    .line 332
    .end local v0           #errorMsg:I
    :pswitch_2b
    const v0, 0x7f0b01fb

    .line 333
    .restart local v0       #errorMsg:I
    goto :goto_1f

    .line 318
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_23
        :pswitch_3
        :pswitch_27
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .registers 12
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    const/high16 v7, -0x8000

    .line 258
    if-nez p3, :cond_c

    .line 259
    const-string v5, "BluetoothEventManager"

    const-string v6, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_b
    :goto_b
    return-void

    .line 262
    :cond_c
    const-string v5, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 264
    .local v0, bondState:I
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 265
    .local v1, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_49

    .line 267
    const-string v5, "BluetoothEventManager"

    const-string v6, "CachedBluetoothDevice for device  not found, calling readPairedDevices()."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    move-result v5

    if-nez v5, :cond_35

    .line 271
    const-string v5, "BluetoothEventManager"

    const-string v6, "Got bonding state changed for , but we have no record of that device."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 275
    :cond_35
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 276
    if-nez v1, :cond_49

    .line 278
    const-string v5, "BluetoothEventManager"

    const-string v6, "Got bonding state changed for , but device not added in cache."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 284
    :cond_49
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    monitor-enter v6

    .line 285
    :try_start_50
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/BluetoothCallback;

    .line 286
    .local v2, callback:Lcom/android/settings/bluetooth/BluetoothCallback;
    invoke-interface {v2, v1, v0}, Lcom/android/settings/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_5a

    .line 288
    .end local v2           #callback:Lcom/android/settings/bluetooth/BluetoothCallback;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_6a
    move-exception v5

    monitor-exit v6
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_6a

    throw v5

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6d
    :try_start_6d
    monitor-exit v6
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6a

    .line 289
    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onBondingStateChanged(I)V

    .line 291
    const/16 v5, 0xa

    if-ne v0, v5, :cond_b

    .line 292
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v5

    if-eqz v5, :cond_94

    .line 294
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->removeDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/settings/bluetooth/BluetoothEventManager;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1500(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_94

    .line 299
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 302
    :cond_94
    const-string v5, "android.bluetooth.device.extra.REASON"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 305
    .local v4, reason:I
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5, v4}, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_b
.end method
