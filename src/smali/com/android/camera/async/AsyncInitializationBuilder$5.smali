.class final Lcom/android/camera/async/AsyncInitializationBuilder$5;
.super Ljava/lang/Object;
.source "AsyncInitializationBuilder.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/async/AsyncInitializationBuilder;->start()Lcom/google/common/util/concurrent/ListenableFuture;
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


# direct methods
.method constructor <init>(Lcom/android/camera/async/AsyncInitializationBuilder;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/camera/async/AsyncInitializationBuilder$5;->this$0:Lcom/android/camera/async/AsyncInitializationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder$5;->this$0:Lcom/android/camera/async/AsyncInitializationBuilder;

    invoke-static {v0}, Lcom/android/camera/async/AsyncInitializationBuilder;->access$300(Lcom/android/camera/async/AsyncInitializationBuilder;)Lcom/android/camera/error/UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder$5;->this$0:Lcom/android/camera/async/AsyncInitializationBuilder;

    invoke-static {v0}, Lcom/android/camera/async/AsyncInitializationBuilder;->access$300(Lcom/android/camera/async/AsyncInitializationBuilder;)Lcom/android/camera/error/UncaughtExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/error/UncaughtExceptionHandler;->crashOnMainThread(Ljava/lang/Throwable;)V

    .line 261
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 245
    check-cast p1, Ljava/lang/Boolean;

    .line 1248
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder$5;->this$0:Lcom/android/camera/async/AsyncInitializationBuilder;

    invoke-static {v0}, Lcom/android/camera/async/AsyncInitializationBuilder;->access$200(Lcom/android/camera/async/AsyncInitializationBuilder;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder$5;->this$0:Lcom/android/camera/async/AsyncInitializationBuilder;

    invoke-static {v0}, Lcom/android/camera/async/AsyncInitializationBuilder;->access$200(Lcom/android/camera/async/AsyncInitializationBuilder;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "Initialization completed."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder$5;->this$0:Lcom/android/camera/async/AsyncInitializationBuilder;

    invoke-static {v0}, Lcom/android/camera/async/AsyncInitializationBuilder;->access$200(Lcom/android/camera/async/AsyncInitializationBuilder;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1252
    iget-object v0, p0, Lcom/android/camera/async/AsyncInitializationBuilder$5;->this$0:Lcom/android/camera/async/AsyncInitializationBuilder;

    invoke-static {v0}, Lcom/android/camera/async/AsyncInitializationBuilder;->access$200(Lcom/android/camera/async/AsyncInitializationBuilder;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "Initialization failed! One of the tasks did not succeed."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->w(Ljava/lang/String;)V

    .line 245
    :cond_1
    return-void
.end method
