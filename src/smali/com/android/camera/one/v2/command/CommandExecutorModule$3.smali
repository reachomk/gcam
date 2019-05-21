.class final Lcom/android/camera/one/v2/command/CommandExecutorModule$3;
.super Ljava/lang/Object;
.source "CommandExecutorModule.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/command/CommandExecutorModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$executorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule$3;->val$executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/one/v2/command/CommandExecutorModule$3;->val$executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 75
    return-void
.end method
