.class Lcom/android/wanam/systemui/StBar/BluetoothButton$BluetoothStateTracker$1;
.super Landroid/os/AsyncTask;
.source "BluetoothButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wanam/systemui/StBar/BluetoothButton$BluetoothStateTracker;->requestStateChange(Landroid/content/Context;Z)V
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
.field final synthetic this$0:Lcom/android/wanam/systemui/StBar/BluetoothButton$BluetoothStateTracker;


# direct methods
.method constructor <init>(Lcom/android/wanam/systemui/StBar/BluetoothButton$BluetoothStateTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wanam/systemui/StBar/BluetoothButton$BluetoothStateTracker$1;->this$0:Lcom/android/wanam/systemui/StBar/BluetoothButton$BluetoothStateTracker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/wanam/systemui/StBar/BluetoothButton$BluetoothStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :goto_d
    const/4 v1, 0x0

    return-object v1

    :cond_f
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_d
.end method
