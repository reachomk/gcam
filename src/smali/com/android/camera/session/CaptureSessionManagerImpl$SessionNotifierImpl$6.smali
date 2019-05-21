.class final Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;
.super Ljava/lang/Object;
.source "CaptureSessionManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN4QOBEC5JMASI9DLO6O92JCLPN6QBFDP76UT39CPKMASI9DLO6OEO_:Lcom/android/camera/session/SessionNotifier;

.field private synthetic val$progressPercent:I

.field private synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/session/SessionNotifier;Landroid/net/Uri;I)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN4QOBEC5JMASI9DLO6O92JCLPN6QBFDP76UT39CPKMASI9DLO6OEO_:Lcom/android/camera/session/SessionNotifier;

    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->val$uri:Landroid/net/Uri;

    iput p3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->val$progressPercent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN4QOBEC5JMASI9DLO6O92JCLPN6QBFDP76UT39CPKMASI9DLO6OEO_:Lcom/android/camera/session/SessionNotifier;

    iget-object v0, v0, Lcom/android/camera/session/SessionNotifier;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$000(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN4QOBEC5JMASI9DLO6O92JCLPN6QBFDP76UT39CPKMASI9DLO6OEO_:Lcom/android/camera/session/SessionNotifier;

    iget-object v0, v0, Lcom/android/camera/session/SessionNotifier;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$000(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 160
    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->val$uri:Landroid/net/Uri;

    iget v4, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->val$progressPercent:I

    invoke-interface {v0, v3, v4}, Lcom/android/camera/session/CaptureSessionManager$SessionListener;->onSessionProgress(Landroid/net/Uri;I)V

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
