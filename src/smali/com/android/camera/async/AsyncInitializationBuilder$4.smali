.class final Lcom/android/camera/async/AsyncInitializationBuilder$4;
.super Ljava/lang/Object;
.source "AsyncInitializationBuilder.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/async/AsyncInitializationBuilder;->thenStartAll(Ljavax/inject/Provider;Ljava/lang/String;)Lcom/android/camera/async/AsyncInitializationBuilder;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/async/AsyncInitializationBuilder;

.field private synthetic val$behaviors:Ljavax/inject/Provider;

.field private synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/async/AsyncInitializationBuilder;Ljava/lang/String;Ljavax/inject/Provider;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/async/AsyncInitializationBuilder$4;->this$0:Lcom/android/camera/async/AsyncInitializationBuilder;

    iput-object p2, p0, Lcom/android/camera/async/AsyncInitializationBuilder$4;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/async/AsyncInitializationBuilder$4;->val$behaviors:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 200
    check-cast p1, Ljava/lang/Boolean;

    .line 1203
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1204
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder$4;->this$0:Lcom/android/camera/async/AsyncInitializationBuilder;

    invoke-static {v0}, Lcom/android/camera/async/AsyncInitializationBuilder;->access$000(Lcom/android/camera/async/AsyncInitializationBuilder;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1205
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder$4;->this$0:Lcom/android/camera/async/AsyncInitializationBuilder;

    invoke-static {v0}, Lcom/android/camera/async/AsyncInitializationBuilder;->access$000(Lcom/android/camera/async/AsyncInitializationBuilder;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/async/AsyncInitializationBuilder$4;->val$name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#get-all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder$4;->val$behaviors:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1207
    iget-object v1, p0, Lcom/android/camera/async/AsyncInitializationBuilder$4;->this$0:Lcom/android/camera/async/AsyncInitializationBuilder;

    invoke-static {v1}, Lcom/android/camera/async/AsyncInitializationBuilder;->access$000(Lcom/android/camera/async/AsyncInitializationBuilder;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/async/AsyncInitializationBuilder$4;->val$name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#run-all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 1208
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1209
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/behavior/Behavior;

    .line 1210
    iget-object v2, p0, Lcom/android/camera/async/AsyncInitializationBuilder$4;->this$0:Lcom/android/camera/async/AsyncInitializationBuilder;

    invoke-static {v2}, Lcom/android/camera/async/AsyncInitializationBuilder;->access$100(Lcom/android/camera/async/AsyncInitializationBuilder;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder$4;->this$0:Lcom/android/camera/async/AsyncInitializationBuilder;

    invoke-static {v0}, Lcom/android/camera/async/AsyncInitializationBuilder;->access$000(Lcom/android/camera/async/AsyncInitializationBuilder;)Lcom/android/camera/debug/trace/Trace;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 1214
    :cond_1
    return-void

    .line 1215
    :cond_2
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder$4;->val$behaviors:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1216
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1217
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/behavior/Behavior;

    .line 1218
    iget-object v2, p0, Lcom/android/camera/async/AsyncInitializationBuilder$4;->this$0:Lcom/android/camera/async/AsyncInitializationBuilder;

    invoke-static {v2}, Lcom/android/camera/async/AsyncInitializationBuilder;->access$100(Lcom/android/camera/async/AsyncInitializationBuilder;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
