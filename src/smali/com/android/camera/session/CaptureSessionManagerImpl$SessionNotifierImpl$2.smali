.class final Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$2;
.super Ljava/lang/Object;
.source "CaptureSessionManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN4QOBEC5JMASI9DLO6O92JCLPN6QBFDP76UT39CPKMASI9DLO6OEO_:Lcom/android/camera/session/SessionNotifier;

.field private synthetic val$stackedItems:Ljava/util/List;

.field private synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/session/SessionNotifier;Landroid/net/Uri;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$2;->this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN4QOBEC5JMASI9DLO6O92JCLPN6QBFDP76UT39CPKMASI9DLO6OEO_:Lcom/android/camera/session/SessionNotifier;

    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$2;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$2;->val$stackedItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$2;->this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN4QOBEC5JMASI9DLO6O92JCLPN6QBFDP76UT39CPKMASI9DLO6OEO_:Lcom/android/camera/session/SessionNotifier;

    iget-object v0, v0, Lcom/android/camera/session/SessionNotifier;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$000(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$2;->this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN4QOBEC5JMASI9DLO6O92JCLPN6QBFDP76UT39CPKMASI9DLO6OEO_:Lcom/android/camera/session/SessionNotifier;

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

    .line 84
    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$2;->val$uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$2;->val$stackedItems:Ljava/util/List;

    invoke-interface {v0, v3, v4}, Lcom/android/camera/session/CaptureSessionManager$SessionListener;->onSessionDone(Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0

    .line 86
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

    .line 87
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$2;->this$1$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN4QOBEC5JMASI9DLO6O92JCLPN6QBFDP76UT39CPKMASI9DLO6OEO_:Lcom/android/camera/session/SessionNotifier;

    iget-object v0, v0, Lcom/android/camera/session/SessionNotifier;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$2;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$200(Lcom/android/camera/session/CaptureSessionManagerImpl;Landroid/net/Uri;)V

    .line 88
    return-void
.end method
