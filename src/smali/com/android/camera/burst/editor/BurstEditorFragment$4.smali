.class final Lcom/android/camera/burst/editor/BurstEditorFragment$4;
.super Ljava/lang/Object;
.source "BurstEditorFragment.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/editor/BurstEditorFragment;->removeAndDeleteItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/libraries/smartburst/utils/Empty;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$itemsToBeDeleted:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$4;->val$itemsToBeDeleted:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 214
    .line 1217
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$4;->val$itemsToBeDeleted:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    .line 1218
    invoke-virtual {v0}, Lcom/android/camera/data/BurstFrameItem;->delete()Z

    goto :goto_0

    .line 1220
    :cond_0
    sget-object v0, Lcom/google/android/libraries/smartburst/utils/Empty;->INSTANCE:Lcom/google/android/libraries/smartburst/utils/Empty;

    .line 214
    return-object v0
.end method
