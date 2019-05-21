.class final Lcom/google/android/apps/lightcycle/PanoramaModule$17;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;->onCaptureCancel()V
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
    .line 1238
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$17;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1241
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$17;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    .line 1243
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOBGE0NK6OBDCLP62GB3EHKNCQBKF51MURJKE9NMOR35E8TG____(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1245
    const v1, 0x7f0a00ec

    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$17$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$17$1;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule$17;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1261
    const v1, 0x7f0a00ed

    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$17$2;

    invoke-direct {v2}, Lcom/google/android/apps/lightcycle/PanoramaModule$17$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1270
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$17;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$4400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKTIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUR39CTK78ORPCDM6ABQGC5N6USJ1DLGKQRR4ELM6A923C5O78TBICL6MUP357C______(Lcom/google/android/apps/lightcycle/PanoramaModule;)I

    move-result v1

    sget v2, Lcom/google/android/apps/lightcycle/PanoramaModule$CaptureMode;->PHOTO_SPHERE$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355T862RJFE9GMQOADDTI7AR354H1M2S3KELP6AJBFCHIJM___:I

    if-ne v1, v2, :cond_0

    .line 1271
    const v1, 0x7f0a026b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1275
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1276
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$17;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/apps/lightcycle/PanoramaModule;->cancelDialog:Landroid/app/AlertDialog;

    .line 1277
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$17;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->cancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1278
    return-void

    .line 1273
    :cond_0
    const v1, 0x7f0a026a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
