.class final Lcom/android/camera/behavior/Behaviors$1;
.super Ljava/lang/Object;
.source "Behaviors.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/behavior/Behaviors;->startAsync(Ljavax/inject/Provider;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$behavior:Ljavax/inject/Provider;


# direct methods
.method constructor <init>(Ljavax/inject/Provider;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/behavior/Behaviors$1;->val$behavior:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/behavior/Behaviors$1;->val$behavior:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/behavior/Behavior;

    invoke-interface {v0}, Lcom/android/camera/behavior/Behavior;->run()V

    .line 48
    return-void
.end method
