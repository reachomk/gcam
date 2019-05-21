.class final Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$2;
.super Ljava/lang/Object;
.source "PhotoSphereMessageOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->hideShortMessage()V
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
    .line 65
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$2;->this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$2;->this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    const v1, 0x7f110147

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    return-void
.end method
