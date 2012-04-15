.class Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;
.super Landroid/os/AsyncTask;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetKeyStoreAndKeyChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/CredentialStorage;)V
    .registers 2
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 6
    .parameter "unused"

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-object v2, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    #getter for: Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v2}, Lcom/android/settings/CredentialStorage;->access$400(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore;->reset()Z

    .line 245
    :try_start_a
    iget-object v2, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-static {v2}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_2a

    move-result-object v1

    .line 247
    .local v1, keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :try_start_10
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    invoke-interface {v2}, Landroid/security/IKeyChainService;->reset()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_37
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_20

    move-result-object v2

    .line 251
    :try_start_1c
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_2a

    .line 255
    .end local v1           #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :goto_1f
    return-object v2

    .line 248
    .restart local v1       #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :catch_20
    move-exception v0

    .line 249
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    :try_start_22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_37

    move-result-object v2

    .line 251
    :try_start_26
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_1f

    .line 253
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :catch_2a
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 255
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1f

    .line 251
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :catchall_37
    move-exception v2

    :try_start_38
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v2
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3c} :catch_2a
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 238
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .parameter "success"

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 261
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    const v1, 0x7f0b05bd

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 267
    :goto_13
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 268
    return-void

    .line 264
    :cond_19
    iget-object v0, p0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/CredentialStorage;

    const v1, 0x7f0b05be

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_13
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 238
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
