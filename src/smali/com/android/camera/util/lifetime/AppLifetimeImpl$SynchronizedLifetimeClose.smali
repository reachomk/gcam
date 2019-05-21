.class final Lcom/android/camera/util/lifetime/AppLifetimeImpl$SynchronizedLifetimeClose;
.super Ljava/lang/Object;
.source "AppLifetimeImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/lifetime/AppLifetimeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SynchronizedLifetimeClose"
.end annotation


# instance fields
.field private final lifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private synthetic this$0:Lcom/android/camera/util/lifetime/AppLifetimeImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/util/lifetime/AppLifetimeImpl;Lcom/google/android/apps/camera/async/Lifetime;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl$SynchronizedLifetimeClose;->this$0:Lcom/android/camera/util/lifetime/AppLifetimeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl$SynchronizedLifetimeClose;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 195
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl$SynchronizedLifetimeClose;->this$0:Lcom/android/camera/util/lifetime/AppLifetimeImpl;

    invoke-static {v0}, Lcom/android/camera/util/lifetime/AppLifetimeImpl;->access$000(Lcom/android/camera/util/lifetime/AppLifetimeImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/util/lifetime/AppLifetimeImpl$SynchronizedLifetimeClose;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 201
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
