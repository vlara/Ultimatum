.class Lcom/android/settings/SetFullBackupPassword$1;
.super Ljava/lang/Object;
.source "SetFullBackupPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetFullBackupPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SetFullBackupPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/SetFullBackupPassword;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 41
    iget-object v3, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    iget-object v3, v3, Lcom/android/settings/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    if-ne p1, v3, :cond_77

    .line 42
    iget-object v3, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    iget-object v3, v3, Lcom/android/settings/SetFullBackupPassword;->mCurrentPw:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, curPw:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    iget-object v3, v3, Lcom/android/settings/SetFullBackupPassword;->mNewPw:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, newPw:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    iget-object v3, v3, Lcom/android/settings/SetFullBackupPassword;->mConfirmNewPw:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, confirmPw:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 48
    const-string v3, "SetFullBackupPassword"

    const-string v4, "password mismatch"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v3, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    const-string v4, "!!! New password and confirmation don\'t match !!!"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 76
    .end local v0           #confirmPw:Ljava/lang/String;
    .end local v1           #curPw:Ljava/lang/String;
    .end local v2           #newPw:Ljava/lang/String;
    :goto_43
    return-void

    .line 57
    .restart local v0       #confirmPw:Ljava/lang/String;
    .restart local v1       #curPw:Ljava/lang/String;
    .restart local v2       #newPw:Ljava/lang/String;
    :cond_44
    iget-object v3, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    #calls: Lcom/android/settings/SetFullBackupPassword;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v1, v2}, Lcom/android/settings/SetFullBackupPassword;->access$000(Lcom/android/settings/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 59
    const-string v3, "SetFullBackupPassword"

    const-string v4, "password set successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v3, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    const-string v4, "!!! New backup password set !!!"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 63
    iget-object v3, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    invoke-virtual {v3}, Lcom/android/settings/SetFullBackupPassword;->finish()V

    goto :goto_43

    .line 66
    :cond_64
    const-string v3, "SetFullBackupPassword"

    const-string v4, "failure; password mismatch?"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v3, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    const-string v4, "!!! Failure setting backup password !!!"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_43

    .line 71
    .end local v0           #confirmPw:Ljava/lang/String;
    .end local v1           #curPw:Ljava/lang/String;
    .end local v2           #newPw:Ljava/lang/String;
    :cond_77
    iget-object v3, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    iget-object v3, v3, Lcom/android/settings/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    if-ne p1, v3, :cond_83

    .line 72
    iget-object v3, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    invoke-virtual {v3}, Lcom/android/settings/SetFullBackupPassword;->finish()V

    goto :goto_43

    .line 74
    :cond_83
    const-string v3, "SetFullBackupPassword"

    const-string v4, "Click on unknown view"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method
