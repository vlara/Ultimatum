.class Lcom/android/settings/CryptKeeper$1;
.super Landroid/os/Handler;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .registers 2
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$1;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 200
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 209
    :goto_5
    return-void

    .line 202
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$1;->this$0:Lcom/android/settings/CryptKeeper;

    #calls: Lcom/android/settings/CryptKeeper;->updateProgress()V
    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$700(Lcom/android/settings/CryptKeeper;)V

    goto :goto_5

    .line 206
    :pswitch_c
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$1;->this$0:Lcom/android/settings/CryptKeeper;

    #calls: Lcom/android/settings/CryptKeeper;->cooldown()V
    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$200(Lcom/android/settings/CryptKeeper;)V

    goto :goto_5

    .line 200
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
