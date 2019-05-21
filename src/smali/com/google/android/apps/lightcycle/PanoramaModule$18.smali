.class final Lcom/google/android/apps/lightcycle/PanoramaModule$18;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;->onCaptureDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$18;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1318
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$18;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    .line 1320
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOBGE0NK6OBDCLP62GB3EHKNCQBKF51MURJKE9NMOR35E8TG____(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1322
    const v1, 0x7f0a00ec

    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$18$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$18$1;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule$18;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1331
    const v1, 0x7f0a00ed

    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$18$2;

    invoke-direct {v2}, Lcom/google/android/apps/lightcycle/PanoramaModule$18$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1341
    const v1, 0x7f0a026e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1342
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1343
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$18;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/apps/lightcycle/PanoramaModule;->fisheyeConfirmDialog:Landroid/app/AlertDialog;

    .line 1344
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$18;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->fisheyeConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1345
    return-void
.end method
