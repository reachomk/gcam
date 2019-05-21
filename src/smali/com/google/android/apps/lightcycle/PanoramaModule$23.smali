.class final Lcom/google/android/apps/lightcycle/PanoramaModule$23;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

.field private synthetic val$messageId:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;I)V
    .locals 0

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$23;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    iput p2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$23;->val$messageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$23;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOBGE0NK6OBDCLP62GB3EHKNCQBKF51MURJKE9NMOR35E8TG____(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$23;->val$messageId:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Fatal error in Panorama module: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->finishActivityWithReason(Ljava/lang/String;)V

    .line 1557
    return-void
.end method
