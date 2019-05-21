.class public Lcom/android/camera/burst/editor/AddCreationFabMenu$Adapter;
.super Ljava/lang/Object;
.source "AddCreationFabMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/editor/AddCreationFabMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/BurstEditorFragment;)V
    .locals 0

    .prologue
    .line 2251
    iput-object p1, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$Adapter;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableCreationTypes()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/burst/postprocessing/CreationType;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$Adapter;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$500(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1255
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1256
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 1258
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$Adapter;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$500(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;->getAvailableCreationTypes()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0
.end method
