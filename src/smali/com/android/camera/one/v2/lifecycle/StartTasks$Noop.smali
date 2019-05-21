.class final Lcom/android/camera/one/v2/lifecycle/StartTasks$Noop;
.super Ljava/lang/Object;
.source "StartTasks.java"

# interfaces
.implements Lcom/android/camera/one/v2/lifecycle/StartTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/lifecycle/StartTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Noop"
.end annotation


# static fields
.field private static final INTANCE:Lcom/android/camera/one/v2/lifecycle/StartTasks$Noop;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/android/camera/one/v2/lifecycle/StartTasks$Noop;

    invoke-direct {v0}, Lcom/android/camera/one/v2/lifecycle/StartTasks$Noop;-><init>()V

    sput-object v0, Lcom/android/camera/one/v2/lifecycle/StartTasks$Noop;->INTANCE:Lcom/android/camera/one/v2/lifecycle/StartTasks$Noop;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/one/v2/lifecycle/StartTasks$Noop;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/camera/one/v2/lifecycle/StartTasks$Noop;->INTANCE:Lcom/android/camera/one/v2/lifecycle/StartTasks$Noop;

    return-object v0
.end method


# virtual methods
.method public final run()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
