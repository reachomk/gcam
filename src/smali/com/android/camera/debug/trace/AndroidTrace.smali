.class final Lcom/android/camera/debug/trace/AndroidTrace;
.super Ljava/lang/Object;
.source "AndroidTrace.java"

# interfaces
.implements Lcom/android/camera/debug/trace/Trace;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private final recordLogs:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/camera/debug/trace/AndroidTrace;->tag:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/debug/trace/AndroidTrace;->recordLogs:Z

    .line 17
    return-void
.end method


# virtual methods
.method public final varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/camera/debug/trace/AndroidTrace;->recordLogs:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/debug/trace/AndroidTrace;->start(Ljava/lang/String;)V

    .line 2026
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 41
    :cond_0
    return-void
.end method

.method public final start(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 21
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/debug/trace/AndroidTrace;->tag:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public final stop()V
    .locals 0

    .prologue
    .line 26
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 27
    return-void
.end method

.method public final stopAndStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    .line 1026
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/camera/debug/trace/AndroidTrace;->start(Ljava/lang/String;)V

    .line 33
    return-void
.end method
