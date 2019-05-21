.class public final Lcom/android/camera/util/activity/ActivityFinishWithReason;
.super Ljava/lang/Object;
.source "ActivityFinishWithReason.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "ActivityCloser"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/activity/ActivityFinishWithReason;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/util/activity/ActivityFinishWithReason;->activity:Ljava/lang/ref/WeakReference;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/util/activity/ActivityFinishWithReason;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    return-void
.end method


# virtual methods
.method public final finish(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 42
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/util/activity/ActivityFinishWithReason;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 45
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/util/activity/ActivityFinishWithReason;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    sget-object v2, Lcom/android/camera/util/activity/ActivityFinishWithReason;->TAG:Ljava/lang/String;

    const-string v3, "WARNING: Activity was artificially finished: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 49
    :cond_0
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
