.class Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$1;
.super Ljava/lang/Object;
.source "GraphRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->onRunnerStopped(Ljava/lang/Exception;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

.field final synthetic val$closed:Z

.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;Ljava/lang/Exception;Z)V
    .locals 0

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    iput-object p2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$1;->val$exception:Ljava/lang/Exception;

    iput-boolean p3, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$1;->val$closed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->access$2000(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;)Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$RunParameters;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$RunParameters;->listener:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$Listener;

    if-nez v0, :cond_0

    .line 1349
    :goto_0
    return-void

    .line 1344
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$1;->val$exception:Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 1345
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->access$2000(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;)Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$RunParameters;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$RunParameters;->listener:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$Listener;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$Listener;->onGraphRunnerStopped(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;)V

    goto :goto_0

    .line 1347
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->access$2000(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;)Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$RunParameters;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$RunParameters;->listener:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$Listener;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$1;->val$exception:Ljava/lang/Exception;

    iget-boolean v2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$1;->val$closed:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$Listener;->onGraphRunnerError(Ljava/lang/Exception;Z)V

    goto :goto_0
.end method
