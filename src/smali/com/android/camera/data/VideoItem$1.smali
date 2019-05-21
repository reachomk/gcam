.class final Lcom/android/camera/data/VideoItem$1;
.super Ljava/lang/Object;
.source "VideoItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/data/VideoItem;->createView$51666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR4C5Q62BQCDTHM2R26D5M6QSRKE9KN0H31EHGK2P31E1Q6ASHRB9666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T36IR3DEDQ74QBG95Q6AR94APKM8PBF8DM6IORBCLI46OBCDHH62ORB7CKKOOBECHP6UQB45TR6IPBN5TB6IPBN7C______(Lcom/google/common/base/Optional;Lcom/android/camera/filmstrip/FilmstripDataAdapter;ZLcom/android/camera/one/v2/lifecycle/StartTasks;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/data/VideoItem;

.field private synthetic val$videoClickedCallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS29EHIMQ92MD5I6ARQ3DHKM6QR5CH1M2R3CC9GM6QPR:Lcom/android/camera/one/v2/lifecycle/StartTasks;


# direct methods
.method constructor <init>(Lcom/android/camera/data/VideoItem;Lcom/android/camera/one/v2/lifecycle/StartTasks;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/camera/data/VideoItem$1;->this$0:Lcom/android/camera/data/VideoItem;

    iput-object p2, p0, Lcom/android/camera/data/VideoItem$1;->val$videoClickedCallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS29EHIMQ92MD5I6ARQ3DHKM6QR5CH1M2R3CC9GM6QPR:Lcom/android/camera/one/v2/lifecycle/StartTasks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/camera/data/VideoItem$1;->val$videoClickedCallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS29EHIMQ92MD5I6ARQ3DHKM6QR5CH1M2R3CC9GM6QPR:Lcom/android/camera/one/v2/lifecycle/StartTasks;

    iget-object v0, p0, Lcom/android/camera/data/VideoItem$1;->this$0:Lcom/android/camera/data/VideoItem;

    iget-object v0, v0, Lcom/android/camera/data/VideoItem;->data:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/data/VideoItem$1;->this$0:Lcom/android/camera/data/VideoItem;

    iget-object v0, v0, Lcom/android/camera/data/VideoItem;->data:Lcom/android/camera/data/FilmstripItemData;

    check-cast v0, Lcom/android/camera/data/VideoItemData;

    invoke-virtual {v0}, Lcom/android/camera/data/VideoItemData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/one/v2/lifecycle/StartTasks;->playVideo(Landroid/net/Uri;Ljava/lang/String;)V

    .line 184
    return-void
.end method
