.class final Lcom/google/android/apps/camera/async/DelayedLifetime$1;
.super Ljava/lang/Object;
.source "DelayedLifetime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/DelayedLifetime;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/async/DelayedLifetime;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/DelayedLifetime;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/apps/camera/async/DelayedLifetime$1;->this$0:Lcom/google/android/apps/camera/async/DelayedLifetime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/camera/async/DelayedLifetime$1;->this$0:Lcom/google/android/apps/camera/async/DelayedLifetime;

    invoke-static {v0}, Lcom/google/android/apps/camera/async/DelayedLifetime;->access$000(Lcom/google/android/apps/camera/async/DelayedLifetime;)Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 49
    return-void
.end method
