.class final Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper$1;
.super Ljava/lang/Object;
.source "SuspendableExecutorWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;

.field private synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper$1;->this$0:Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;

    iput-object p2, p0, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper$1;->this$0:Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper$1;->val$runnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;->access$000(Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/SuspendableExecutorWrapper$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 135
    :cond_0
    return-void
.end method
