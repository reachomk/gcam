.class final Lcom/android/camera/ui/viewfinder/ViewfinderImpl$2;
.super Ljava/lang/Object;
.source "ViewfinderImpl.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/viewfinder/ViewfinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/viewfinder/ViewfinderImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/viewfinder/ViewfinderImpl;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl$2;->this$0:Lcom/android/camera/ui/viewfinder/ViewfinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl$2;->this$0:Lcom/android/camera/ui/viewfinder/ViewfinderImpl;

    invoke-static {v0}, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->access$000(Lcom/android/camera/ui/viewfinder/ViewfinderImpl;)Lcom/android/camera/ui/viewfinder/Viewfinder$SurfaceDestroyedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl$2;->this$0:Lcom/android/camera/ui/viewfinder/ViewfinderImpl;

    invoke-static {v0}, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->access$000(Lcom/android/camera/ui/viewfinder/ViewfinderImpl;)Lcom/android/camera/ui/viewfinder/Viewfinder$SurfaceDestroyedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/viewfinder/Viewfinder$SurfaceDestroyedListener;->onSurfaceDestroyed()V

    .line 168
    :cond_0
    return-void
.end method

.method public final surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method
