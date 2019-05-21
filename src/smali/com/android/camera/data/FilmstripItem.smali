.class public interface abstract Lcom/android/camera/data/FilmstripItem;
.super Ljava/lang/Object;
.source "FilmstripItem.java"


# virtual methods
.method public abstract createView$51666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR4C5Q62BQCDTHM2R26D5M6QSRKE9KN0H31EHGK2P31E1Q6ASHRB9666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T36IR3DEDQ74QBG95Q6AR94APKM8PBF8DM6IORBCLI46OBCDHH62ORB7CKKOOBECHP6UQB45TR6IPBN5TB6IPBN7C______(Lcom/google/common/base/Optional;Lcom/android/camera/filmstrip/FilmstripDataAdapter;ZLcom/android/camera/one/v2/lifecycle/StartTasks;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/camera/filmstrip/FilmstripDataAdapter;",
            "Z",
            "Lcom/android/camera/one/v2/lifecycle/StartTasks;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public abstract delete()Z
.end method

.method public abstract generateThumbnail(II)Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap;
.end method

.method public abstract getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;
.end method

.method public abstract getData()Lcom/android/camera/data/FilmstripItemData;
.end method

.method public abstract getDimensions()Lcom/android/camera/util/Size;
.end method

.method public abstract getImageViewFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getItemViewType$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM8OBKC4NKCQBCDLPN8SJ9E14N8PBDAHSN0P9R()I
.end method

.method public abstract getMediaDetails()Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/data/MediaDetails;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMetadata()Lcom/android/camera/data/Metadata;
.end method

.method public abstract getOrientation()I
.end method

.method public abstract onSingleTapUp$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASHR55D0____(Lcom/android/camera/app/AppController;)Z
.end method

.method public abstract recycle(Landroid/view/View;)V
.end method

.method public abstract refresh()Lcom/android/camera/data/FilmstripItem;
.end method

.method public abstract renderFullRes(Landroid/view/View;)V
.end method

.method public abstract renderThumbnail(Landroid/view/View;)V
.end method

.method public abstract renderThumbnailWithPlaceholder(Landroid/view/View;Landroid/graphics/Bitmap;)V
.end method

.method public abstract renderTiny(Landroid/view/View;)V
.end method

.method public abstract setMetadata(Lcom/android/camera/data/Metadata;)V
.end method

.method public abstract setSuggestedSize(II)V
.end method

.method public abstract setUpdateCallback$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T36IR3DEDQ74QBG95Q6AR94ALO68OBKCL1M2R3CC9GM6QPR55B0____(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V
.end method
