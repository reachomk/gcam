.class final Lcom/android/camera/debug/trace/ForwardAllTrace;
.super Ljava/lang/Object;
.source "ForwardAllTrace.java"

# interfaces
.implements Lcom/android/camera/debug/trace/Trace;


# instance fields
.field private final traces:[Lcom/android/camera/debug/trace/Trace;


# direct methods
.method public varargs constructor <init>([Lcom/android/camera/debug/trace/Trace;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/camera/debug/trace/ForwardAllTrace;->traces:[Lcom/android/camera/debug/trace/Trace;

    .line 11
    return-void
.end method


# virtual methods
.method public final varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 36
    iget-object v1, p0, Lcom/android/camera/debug/trace/ForwardAllTrace;->traces:[Lcom/android/camera/debug/trace/Trace;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 37
    invoke-interface {v3, p1, p2}, Lcom/android/camera/debug/trace/Trace;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public final start(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 15
    iget-object v1, p0, Lcom/android/camera/debug/trace/ForwardAllTrace;->traces:[Lcom/android/camera/debug/trace/Trace;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 16
    invoke-interface {v3, p1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 4

    .prologue
    .line 22
    iget-object v1, p0, Lcom/android/camera/debug/trace/ForwardAllTrace;->traces:[Lcom/android/camera/debug/trace/Trace;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 23
    invoke-interface {v3}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final stopAndStart(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 29
    iget-object v1, p0, Lcom/android/camera/debug/trace/ForwardAllTrace;->traces:[Lcom/android/camera/debug/trace/Trace;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 30
    invoke-interface {v3, p1}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
