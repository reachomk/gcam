.class final Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$5;
.super Ljava/lang/Object;
.source "ViewfinderGestureManagerWirer.java"

# interfaces
.implements Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureManager$GestureDetectorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$context:Landroid/content/Context;

.field private synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$5;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createGestureDetector(Landroid/view/GestureDetector$OnGestureListener;)Landroid/view/GestureDetector;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$5;->val$handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-object v0
.end method

.method public final createScaleGestureDetector(Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)Landroid/view/ScaleGestureDetector;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer$5;->val$handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    return-object v0
.end method
