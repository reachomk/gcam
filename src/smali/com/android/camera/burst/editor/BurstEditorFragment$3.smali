.class final Lcom/android/camera/burst/editor/BurstEditorFragment$3;
.super Lcom/google/android/libraries/smartburst/utils/VoidFunction;
.source "BurstEditorFragment.java"


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
        "Lcom/google/android/libraries/smartburst/utils/VoidFunction",
        "<",
        "Lcom/google/android/libraries/smartburst/utils/Empty;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

.field private synthetic val$deleteThread:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/BurstEditorFragment;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$3;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    iput-object p2, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$3;->val$deleteThread:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/VoidFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 222
    .line 1225
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$3;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$500(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/burst/postprocessing/SingleCreationsGenerator;->updateAvailableCreationsAsync()V

    .line 1226
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$3;->val$deleteThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 222
    return-void
.end method
