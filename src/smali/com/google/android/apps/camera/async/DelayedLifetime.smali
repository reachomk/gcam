.class public final Lcom/google/android/apps/camera/async/DelayedLifetime;
.super Ljava/lang/Object;
.source "DelayedLifetime.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# instance fields
.field private final childLifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final executor:Lcom/google/android/apps/camera/async/DelayedExecutor;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/camera/async/DelayedExecutor;Lcom/google/android/apps/camera/async/Lifetime;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/apps/camera/async/DelayedLifetime;->executor:Lcom/google/android/apps/camera/async/DelayedExecutor;

    .line 36
    iput-object p2, p0, Lcom/google/android/apps/camera/async/DelayedLifetime;->childLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/DelayedLifetime;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/async/DelayedLifetime;)Lcom/google/android/apps/camera/async/Lifetime;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/apps/camera/async/DelayedLifetime;->childLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    return-object v0
.end method

.method public static create(Lcom/google/android/apps/camera/async/Lifetime;I)Lcom/google/android/apps/camera/async/Lifetime;
    .locals 6

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/apps/camera/async/Lifetime;->createChildLifetime()Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v1

    .line 29
    new-instance v2, Lcom/google/android/apps/camera/async/DelayedLifetime;

    new-instance v3, Lcom/google/android/apps/camera/async/DelayedExecutor;

    const-string v4, "DelLifetime"

    const/16 v5, 0x7d0

    invoke-direct {v3, v4, v5}, Lcom/google/android/apps/camera/async/DelayedExecutor;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v0}, Lcom/google/android/apps/camera/async/DelayedLifetime;-><init>(Lcom/google/android/apps/camera/async/DelayedExecutor;Lcom/google/android/apps/camera/async/Lifetime;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 31
    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/camera/async/DelayedLifetime;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/async/DelayedLifetime;->executor:Lcom/google/android/apps/camera/async/DelayedExecutor;

    new-instance v1, Lcom/google/android/apps/camera/async/DelayedLifetime$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/camera/async/DelayedLifetime$1;-><init>(Lcom/google/android/apps/camera/async/DelayedLifetime;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/DelayedExecutor;->execute(Ljava/lang/Runnable;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/camera/async/DelayedLifetime;->executor:Lcom/google/android/apps/camera/async/DelayedExecutor;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/DelayedExecutor;->close()V

    goto :goto_0
.end method
