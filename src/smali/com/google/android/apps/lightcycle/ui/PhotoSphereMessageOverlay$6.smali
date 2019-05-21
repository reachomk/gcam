.class final Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$6;
.super Ljava/lang/Object;
.source "PhotoSphereMessageOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->hideRotateDeviceIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$6;->this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$6;->this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->access$100(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$6;->this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->access$102(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;Z)Z

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$6;->this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    const v1, 0x7f110149

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_0
    return-void
.end method
