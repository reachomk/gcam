.class final Lcom/android/camera/burst/editor/AddCreationFabMenu$7;
.super Ljava/lang/Object;
.source "AddCreationFabMenu.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/editor/AddCreationFabMenu;->updateItemVisibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/camera/burst/postprocessing/CreationType;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/AddCreationFabMenu;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$7;->this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 410
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 392
    check-cast p1, Ljava/util/List;

    .line 1395
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$7;->this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    invoke-static {v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->access$800(Lcom/android/camera/burst/editor/AddCreationFabMenu;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1396
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1397
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1399
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1402
    :cond_1
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$7;->this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->access$902(Lcom/android/camera/burst/editor/AddCreationFabMenu;Z)Z

    .line 1403
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$7;->this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    invoke-static {v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->access$900(Lcom/android/camera/burst/editor/AddCreationFabMenu;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1404
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$7;->this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    invoke-virtual {v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->hide()V

    .line 392
    :cond_2
    return-void
.end method
