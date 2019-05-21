.class final Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$7;
.super Ljava/lang/Object;
.source "PhotoSphereMessageOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->updateCalibrationMessage(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

.field private synthetic val$currentPhotoIndex:I

.field private synthetic val$inCalibrationMode:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;ZI)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$7;->this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    iput-boolean p2, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$7;->val$inCalibrationMode:Z

    iput p3, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$7;->val$currentPhotoIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$7;->this$0:Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;

    const v1, 0x7f110148

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$7;->val$inCalibrationMode:Z

    if-eqz v1, :cond_0

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget v1, p0, Lcom/google/android/apps/lightcycle/ui/PhotoSphereMessageOverlay$7;->val$currentPhotoIndex:I

    packed-switch v1, :pswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 172
    :pswitch_0
    const v1, 0x7f0a0263

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 175
    :pswitch_1
    const v1, 0x7f0a0264

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 178
    :pswitch_2
    const v1, 0x7f0a0265

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 181
    :pswitch_3
    const v1, 0x7f0a0266

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 185
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
