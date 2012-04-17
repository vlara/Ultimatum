.class Lcom/android/settings/LockPreview$3;
.super Ljava/lang/Object;
.source "LockPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockPreview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockPreview;


# direct methods
.method constructor <init>(Lcom/android/settings/LockPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings/LockPreview$3;->this$0:Lcom/android/settings/LockPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/LockPreview$3;->this$0:Lcom/android/settings/LockPreview;

    invoke-virtual {v0}, Lcom/android/settings/LockPreview;->finish()V

    .line 136
    return-void
.end method
