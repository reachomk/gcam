.class Lcom/bumptech/glide/manager/ApplicationLifecycle;
.super Ljava/lang/Object;
.source "ApplicationLifecycle.java"

# interfaces
.implements Lcom/bumptech/glide/manager/Lifecycle;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V
    .locals 0

    .prologue
    .line 13
    invoke-interface {p1}, Lcom/bumptech/glide/manager/LifecycleListener;->onStart()V

    .line 14
    return-void
.end method

.method public final removeListener(Lcom/bumptech/glide/manager/LifecycleListener;)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method
