.class Lcom/android/wanam/systemui/StBar/PowerButton$3;
.super Ljava/lang/Object;
.source "PowerButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wanam/systemui/StBar/PowerButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wanam/systemui/StBar/PowerButton;


# direct methods
.method constructor <init>(Lcom/android/wanam/systemui/StBar/PowerButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wanam/systemui/StBar/PowerButton$3;->this$0:Lcom/android/wanam/systemui/StBar/PowerButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/android/wanam/systemui/StBar/PowerButton;->access$100()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wanam/systemui/StBar/PowerButton;

    invoke-virtual {v4}, Lcom/android/wanam/systemui/StBar/PowerButton;->handleLongClick()Z

    move-result v2

    :cond_35
    if-eqz v2, :cond_44

    invoke-static {}, Lcom/android/wanam/systemui/StBar/PowerButton;->access$300()Landroid/view/View$OnLongClickListener;

    move-result-object v4

    if-eqz v4, :cond_44

    invoke-static {}, Lcom/android/wanam/systemui/StBar/PowerButton;->access$300()Landroid/view/View$OnLongClickListener;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_44
    return v2
.end method
