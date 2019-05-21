.class final Lcom/android/camera/debug/SystemHealth$2;
.super Ljava/lang/Thread;
.source "SystemHealth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/debug/SystemHealth;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/debug/SystemHealth;


# direct methods
.method constructor <init>(Lcom/android/camera/debug/SystemHealth;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/debug/SystemHealth$2;->this$0:Lcom/android/camera/debug/SystemHealth;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 56
    :goto_0
    invoke-static {}, Lcom/android/camera/debug/SystemHealth$2;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/camera/debug/SystemHealth$2;->this$0:Lcom/android/camera/debug/SystemHealth;

    invoke-static {v0}, Lcom/android/camera/debug/SystemHealth;->access$200(Lcom/android/camera/debug/SystemHealth;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 59
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Lcom/android/camera/debug/SystemHealth$2;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 64
    :cond_0
    return-void
.end method
