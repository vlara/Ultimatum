.class final Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;
.super Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;
.source "PowerSavingModeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$StateTracker;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 404
    packed-switch p0, :pswitch_data_e

    .line 414
    const/4 v0, 0x4

    :goto_4
    return v0

    .line 406
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 408
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    .line 410
    :pswitch_9
    const/4 v0, 0x2

    goto :goto_4

    .line 412
    :pswitch_b
    const/4 v0, 0x3

    goto :goto_4

    .line 404
    nop

    :pswitch_data_e
    .packed-switch 0xa
        :pswitch_5
        :pswitch_9
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 361
    invoke-static {}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->access$500()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_15

    .line 362
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 363
    .local v0, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_e

    .line 364
    const/4 v1, 0x4

    .line 368
    .end local v0           #manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :goto_d
    return v1

    .line 366
    .restart local v0       #manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :cond_e
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->access$502(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 368
    .end local v0           #manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :cond_15
    invoke-static {}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->access$500()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    goto :goto_d
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 392
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 397
    :goto_c
    return-void

    .line 395
    :cond_d
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 396
    .local v0, bluetoothState:I
    invoke-static {v0}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_c
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 373
    invoke-static {}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider;->access$500()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_e

    .line 374
    const-string v0, "PowerSavingModeWidgetProvider"

    const-string v1, "No LocalBluetoothManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_d
    return-void

    .line 381
    :cond_e
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/powersavingmode/PowerSavingModeWidgetProvider$BluetoothStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_d
.end method
