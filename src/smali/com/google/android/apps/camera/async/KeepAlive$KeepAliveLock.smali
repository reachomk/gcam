.class final Lcom/google/android/apps/camera/async/KeepAlive$KeepAliveLock;
.super Ljava/lang/Object;
.source "KeepAlive.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/async/KeepAlive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeepAliveLock"
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private synthetic this$0:Lcom/google/android/apps/camera/async/KeepAlive;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/camera/async/KeepAlive;)V
    .locals 2

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/apps/camera/async/KeepAlive$KeepAliveLock;->this$0:Lcom/google/android/apps/camera/async/KeepAlive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/apps/camera/async/KeepAlive$KeepAliveLock;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/camera/async/KeepAlive;B)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/async/KeepAlive$KeepAliveLock;-><init>(Lcom/google/android/apps/camera/async/KeepAlive;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 147
    iget-object v1, p0, Lcom/google/android/apps/camera/async/KeepAlive$KeepAliveLock;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/google/android/apps/camera/async/KeepAlive$KeepAliveLock;->this$0:Lcom/google/android/apps/camera/async/KeepAlive;

    invoke-static {v1}, Lcom/google/android/apps/camera/async/KeepAlive;->access$000(Lcom/google/android/apps/camera/async/KeepAlive;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/camera/async/KeepAlive$KeepAliveLock;->this$0:Lcom/google/android/apps/camera/async/KeepAlive;

    invoke-static {v2}, Lcom/google/android/apps/camera/async/KeepAlive;->access$210(Lcom/google/android/apps/camera/async/KeepAlive;)I

    .line 150
    iget-object v2, p0, Lcom/google/android/apps/camera/async/KeepAlive$KeepAliveLock;->this$0:Lcom/google/android/apps/camera/async/KeepAlive;

    .line 151
    invoke-static {v2}, Lcom/google/android/apps/camera/async/KeepAlive;->access$200(Lcom/google/android/apps/camera/async/KeepAlive;)I

    move-result v2

    if-ltz v2, :cond_1

    :goto_0
    const-string v2, "The number of handles should never be negative."

    .line 150
    invoke-static {v0, v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/camera/async/KeepAlive$KeepAliveLock;->this$0:Lcom/google/android/apps/camera/async/KeepAlive;

    invoke-static {v0}, Lcom/google/android/apps/camera/async/KeepAlive;->access$500(Lcom/google/android/apps/camera/async/KeepAlive;)V

    .line 154
    monitor-exit v1

    .line 156
    :cond_0
    return-void

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
