.class public final Lcom/android/camera/debug/Toaster;
.super Ljava/lang/Object;
.source "Toaster.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/camera/async/MainThread;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/camera/debug/Toaster;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/android/camera/debug/Toaster;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/debug/Toaster;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/camera/debug/Toaster;->context:Landroid/content/Context;

    return-object v0
.end method

.method private final toast(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/debug/Toaster;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/debug/Toaster$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/debug/Toaster$1;-><init>(Lcom/android/camera/debug/Toaster;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final toastLong(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/debug/Toaster;->toast(Ljava/lang/String;I)V

    .line 26
    return-void
.end method

.method public final toastShort(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/debug/Toaster;->toast(Ljava/lang/String;I)V

    .line 22
    return-void
.end method
