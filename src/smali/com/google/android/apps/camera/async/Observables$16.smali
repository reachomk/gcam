.class final Lcom/google/android/apps/camera/async/Observables$16;
.super Ljava/lang/Object;
.source "Observables.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/Observables;->addCallback(Lcom/google/android/apps/camera/async/Observable;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/google/android/apps/camera/async/Observables$16;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/apps/camera/async/Observables$16;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 396
    return-void
.end method
