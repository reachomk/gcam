.class final Lcom/google/android/apps/camera/async/FilteredUiState$1;
.super Ljava/lang/Object;
.source "FilteredUiState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/FilteredUiState;->addCallback(Ljava/lang/Runnable;)Lcom/google/android/apps/camera/async/SafeCloseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/async/FilteredUiState;

.field private synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/FilteredUiState;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/apps/camera/async/FilteredUiState$1;->this$0:Lcom/google/android/apps/camera/async/FilteredUiState;

    iput-object p2, p0, Lcom/google/android/apps/camera/async/FilteredUiState$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/camera/async/FilteredUiState$1;->this$0:Lcom/google/android/apps/camera/async/FilteredUiState;

    invoke-static {v0}, Lcom/google/android/apps/camera/async/FilteredUiState;->access$000(Lcom/google/android/apps/camera/async/FilteredUiState;)Lcom/google/android/apps/camera/async/BatchedUiExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/async/FilteredUiState$1;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/BatchedUiExecutor;->execute(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method
