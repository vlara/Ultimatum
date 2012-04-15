.class public final Lcom/android/settings/bluetooth/DevicePickerActivity;
.super Landroid/app/Activity;
.source "DevicePickerActivity.java"


# instance fields
.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 61
    .local v0, mBluetoothState:I
    if-nez p1, :cond_10

    const/16 v1, 0xa

    if-ne v0, v1, :cond_10

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->finish()V

    .line 68
    :cond_f
    :goto_f
    return-void

    .line 64
    :cond_10
    if-nez p1, :cond_f

    const/16 v1, 0xc

    if-ne v0, v1, :cond_f

    .line 66
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f040010

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->setContentView(I)V

    .line 46
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 47
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_1b

    .line 48
    const-string v0, "DevicePickerActivity"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1a
    :goto_1a
    return-void

    .line 51
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 53
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1a

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothEnableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1a
.end method
