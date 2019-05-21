.class final Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$4;
.super Ljava/lang/Object;
.source "PhotoSphereMessageOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->showShortMessageWithTimeout(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$4;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$4;->val$view:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    return-void
.end method
