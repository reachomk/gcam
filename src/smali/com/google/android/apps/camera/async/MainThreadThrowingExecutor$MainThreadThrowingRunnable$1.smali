.class final Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor$MainThreadThrowingRunnable$1;
.super Ljava/lang/Object;
.source "MainThreadThrowingExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor$MainThreadThrowingRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor$MainThreadThrowingRunnable$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/camera/async/MainThreadThrowingExecutor$MainThreadThrowingRunnable$1;->val$e:Ljava/lang/Exception;

    throw v0
.end method
