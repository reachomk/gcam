.class final Lcom/android/camera/app/CameraActivityControllerImpl$13;
.super Ljava/lang/Object;
.source "CameraActivityControllerImpl.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraActivityControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraActivityControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraActivityControllerImpl;)V
    .locals 0

    .prologue
    .line 2127
    iput-object p1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataFocusChanged$514KIAAM(I)V
    .locals 2

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4000(Lcom/android/camera/app/CameraActivityControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2289
    :goto_0
    return-void

    .line 2282
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4600(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/app/CameraActivityControllerImpl$13$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl$13$1;-><init>(Lcom/android/camera/app/CameraActivityControllerImpl$13;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onDataReloaded()V
    .locals 2

    .prologue
    .line 2236
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4000(Lcom/android/camera/app/CameraActivityControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2240
    :goto_0
    return-void

    .line 2239
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripViewController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripViewController;->getCurrentAdapterIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4300(Lcom/android/camera/app/CameraActivityControllerImpl;I)V

    goto :goto_0
.end method

.method public final onDataUpdated$514IILG_()V
    .locals 2

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4000(Lcom/android/camera/app/CameraActivityControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2248
    :goto_0
    return-void

    .line 2247
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripViewController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripViewController;->getCurrentAdapterIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4300(Lcom/android/camera/app/CameraActivityControllerImpl;I)V

    goto :goto_0
.end method

.method public final onEnterFilmstrip$514IILG_()V
    .locals 2

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4000(Lcom/android/camera/app/CameraActivityControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2224
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3800(Lcom/android/camera/app/CameraActivityControllerImpl;Z)V

    .line 2225
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4500(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    .line 2227
    :cond_0
    return-void
.end method

.method public final onEnterFullScreenUiHidden$514IILG_()V
    .locals 2

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4000(Lcom/android/camera/app/CameraActivityControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2211
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3800(Lcom/android/camera/app/CameraActivityControllerImpl;Z)V

    .line 2212
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4500(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    .line 2214
    :cond_0
    return-void
.end method

.method public final onEnterFullScreenUiShown$514IILG_()V
    .locals 2

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4000(Lcom/android/camera/app/CameraActivityControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2197
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3800(Lcom/android/camera/app/CameraActivityControllerImpl;Z)V

    .line 2198
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4500(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    .line 2200
    :cond_0
    return-void
.end method

.method public final onFilmstripHidden()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2142
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFilmstripHidden"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0, v3}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4002(Lcom/android/camera/app/CameraActivityControllerImpl;Z)Z

    .line 2144
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2146
    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4100(Lcom/android/camera/app/CameraActivityControllerImpl;)I

    move-result v1

    const/4 v2, 0x4

    .line 2145
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/stats/UsageStatistics;->changeScreen(II)V

    .line 2147
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0, v3}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3800(Lcom/android/camera/app/CameraActivityControllerImpl;Z)V

    .line 2148
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1100(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/ui/CameraAppUI;

    .line 2149
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4200(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    .line 2150
    return-void
.end method

.method public final onFilmstripShown()V
    .locals 3

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-virtual {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2165
    :goto_0
    return-void

    .line 2158
    :cond_0
    invoke-static {}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFilmstripShown"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4002(Lcom/android/camera/app/CameraActivityControllerImpl;Z)Z

    .line 2160
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2162
    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4100(Lcom/android/camera/app/CameraActivityControllerImpl;)I

    move-result v1

    const/4 v2, 0x5

    .line 2161
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/stats/UsageStatistics;->changeScreen(II)V

    .line 2163
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripViewController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/filmstrip/FilmstripViewController;->getCurrentAdapterIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4300(Lcom/android/camera/app/CameraActivityControllerImpl;I)V

    .line 2164
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4400(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    goto :goto_0
.end method

.method public final onFocusedDataDemoted(I)V
    .locals 5

    .prologue
    .line 2185
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2187
    invoke-static {v1, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2300(Lcom/android/camera/app/CameraActivityControllerImpl;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2190
    invoke-static {v4, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2400(Lcom/android/camera/app/CameraActivityControllerImpl;I)F

    move-result v4

    .line 2186
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/stats/UsageStatistics;->mediaInteraction(Ljava/lang/String;IIF)V

    .line 2191
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2900(Lcom/android/camera/app/CameraActivityControllerImpl;I)V

    .line 2192
    return-void
.end method

.method public final onFocusedDataPromoted(I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 2174
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2176
    invoke-static {v1, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2300(Lcom/android/camera/app/CameraActivityControllerImpl;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    .line 2179
    invoke-static {v2, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2400(Lcom/android/camera/app/CameraActivityControllerImpl;I)F

    move-result v2

    .line 2175
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/camera/stats/UsageStatistics;->mediaInteraction(Ljava/lang/String;IIF)V

    .line 2180
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0, p1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$2900(Lcom/android/camera/app/CameraActivityControllerImpl;I)V

    .line 2181
    return-void
.end method

.method public final onScroll(III)V
    .locals 2

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$4700(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/widget/Preloader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/camera/widget/Preloader;->onScroll(Landroid/widget/AbsListView;III)V

    .line 2295
    return-void
.end method

.method public final onSwipeOutBegin()V
    .locals 2

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3700(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    .line 2136
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3800(Lcom/android/camera/app/CameraActivityControllerImpl;Z)V

    .line 2137
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$3900(Lcom/android/camera/app/CameraActivityControllerImpl;)V

    .line 2138
    return-void
.end method

.method public final onZoomAtIndexChanged(IF)V
    .locals 6

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/android/camera/app/CameraActivityControllerImpl$13;->this$0:Lcom/android/camera/app/CameraActivityControllerImpl;

    invoke-static {v0}, Lcom/android/camera/app/CameraActivityControllerImpl;->access$1800$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN0S1F8DGMQPBIC50M6T39EPKN8UA3DTN78SJFDHM6ASI9DLO6OEP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______(Lcom/android/camera/app/CameraActivityControllerImpl;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 2254
    if-nez v0, :cond_1

    .line 2272
    :cond_0
    :goto_0
    return-void

    .line 2258
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 2262
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v4, 0x7530

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 2266
    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2267
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v2

    .line 2269
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2270
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 2268
    invoke-virtual {v2, v1, v4, v5, p2}, Lcom/android/camera/stats/UsageStatistics;->mediaView(Ljava/lang/String;JF)V

    goto :goto_0
.end method
