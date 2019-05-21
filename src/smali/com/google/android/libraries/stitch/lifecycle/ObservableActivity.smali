.class public Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;
.super Landroid/app/Activity;
.source "ObservableActivity.java"


# instance fields
.field protected final lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

.field private startActivityCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    new-instance v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    invoke-direct {v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    return-void
.end method

.method private final beginStartActivity(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 181
    iget v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->startActivityCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->startActivityCount:I

    if-nez v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 2225
    const/4 v0, 0x0

    :goto_0
    iget-object v2, v1, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2226
    iget-object v2, v1, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method private final endStartActivity()V
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->startActivityCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->startActivityCount:I

    .line 188
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    iget-object v4, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    move v1, v2

    .line 3189
    :goto_0
    iget-object v0, v4, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3190
    iget-object v0, v4, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 3191
    instance-of v5, v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$DispatchKeyEvent;

    if-eqz v5, :cond_1

    .line 3192
    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$DispatchKeyEvent;

    invoke-interface {v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$DispatchKeyEvent;->dispatchKeyEvent$51662RJ4E9NMIP1FEPKMATPF9DINIHBMCLN78EP9B8______()Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 222
    :cond_0
    if-eqz v2, :cond_2

    move v0, v3

    .line 225
    :goto_1
    return v0

    .line 3189
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 225
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 230
    iget-object v4, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    move v1, v2

    .line 3201
    :goto_0
    iget-object v0, v4, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3202
    iget-object v0, v4, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 3203
    instance-of v5, v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$DispatchTouchEvent;

    if-eqz v5, :cond_1

    .line 3204
    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$DispatchTouchEvent;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$DispatchTouchEvent;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 230
    :cond_0
    if-eqz v2, :cond_2

    move v0, v3

    .line 233
    :goto_1
    return v0

    .line 3201
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 233
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 204
    iget-object v2, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 3153
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, v2, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 3154
    iget-object v0, v2, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 3155
    instance-of v3, v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$Finish;

    if-eqz v3, :cond_0

    .line 3156
    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$Finish;

    invoke-interface {v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$Finish;->finish()V

    .line 3153
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 205
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 206
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 3

    .prologue
    .line 216
    iget-object v1, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 3180
    const/4 v0, 0x0

    :goto_0
    iget-object v2, v1, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3181
    iget-object v2, v1, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 218
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 3

    .prologue
    .line 210
    iget-object v1, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 3171
    const/4 v0, 0x0

    :goto_0
    iget-object v2, v1, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3172
    iget-object v2, v1, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 212
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 1272
    const/4 v0, 0x0

    :goto_0
    iget-object v2, v1, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->observers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1273
    iget-object v2, v1, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->observers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 120
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    invoke-virtual {v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onAttachedToWindow()V

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 102
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-object v3, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    move v1, v2

    .line 4213
    :goto_0
    iget-object v0, v3, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 4214
    iget-object v0, v3, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 4215
    instance-of v4, v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnBackPressed;

    if-eqz v4, :cond_2

    .line 4216
    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnBackPressed;

    invoke-interface {v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnBackPressed;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4217
    const/4 v2, 0x1

    .line 273
    :cond_0
    if-nez v2, :cond_1

    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 276
    :cond_1
    return-void

    .line 4213
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 302
    iget-object v2, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 4267
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, v2, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 4268
    iget-object v0, v2, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 4269
    instance-of v3, v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnConfigurationChanged;

    if-eqz v3, :cond_0

    .line 4270
    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnConfigurationChanged;

    invoke-interface {v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnConfigurationChanged;->onConfigurationChanged$51662RJ4E9NMIP1FCDNMST35DPQ2USJ5ECNK6RRECPKMETBIC5Q6IRRE7CKLC___()V

    .line 4267
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 303
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 304
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 252
    iget-object v1, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 4165
    const/4 v0, 0x0

    .line 4166
    iget-object v1, v1, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 4167
    instance-of v3, v0, Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnContextItemSelected;

    if-eqz v3, :cond_1

    .line 4168
    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnContextItemSelected;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnContextItemSelected;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 4170
    goto :goto_0

    .line 252
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    .line 246
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 247
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 4157
    iget-object v0, v0, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 4158
    instance-of v2, v0, Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnCreateContextMenu;

    if-eqz v2, :cond_0

    .line 4159
    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnCreateContextMenu;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnCreateContextMenu;->onCreateContextMenu$51662RJ4E9NMIP1FEPKMATPF8DNMST35F1Q4QPBEEKTKOOBECHP6UQB45TR6IPBN5TB6IPBN7D662RJ4E9NMIP1FEPKMATPF8DNMST35F1Q4QPBEEKI46RREEHINGT2DCLN7AIBECPNJMAAM(Landroid/view/ContextMenu;)V

    goto :goto_0

    .line 248
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    .line 238
    iget-object v1, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 4144
    const/4 v0, 0x0

    .line 4146
    iget-object v1, v1, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 4147
    instance-of v3, v0, Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnCreateOptionsMenu;

    if-eqz v3, :cond_2

    .line 4148
    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnCreateOptionsMenu;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnCreateOptionsMenu;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 4150
    goto :goto_0

    .line 238
    :cond_0
    if-eqz v1, :cond_1

    .line 239
    const/4 v0, 0x1

    .line 241
    :goto_2
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    invoke-virtual {v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onDestroy()V

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 96
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    invoke-virtual {v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onDetachedFromWindow()V

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 108
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 280
    iget-object v4, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    move v1, v2

    .line 4234
    :goto_0
    iget-object v0, v4, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 4235
    iget-object v0, v4, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 4236
    instance-of v5, v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnKeyDown;

    if-eqz v5, :cond_1

    .line 4237
    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnKeyDown;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnKeyDown;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 280
    :cond_0
    if-eqz v2, :cond_2

    move v0, v3

    .line 283
    :goto_1
    return v0

    .line 4234
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 283
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    iget-object v4, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    move v1, v2

    .line 4246
    :goto_0
    iget-object v0, v4, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 4247
    iget-object v0, v4, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 4248
    instance-of v5, v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnKeyUp;

    if-eqz v5, :cond_1

    .line 4249
    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnKeyUp;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnKeyUp;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 288
    :cond_0
    if-eqz v2, :cond_2

    move v0, v3

    .line 291
    :goto_1
    return v0

    .line 4246
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 291
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 1281
    iget-object v0, v0, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 126
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 192
    iget-object v2, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 3135
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, v2, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 3136
    iget-object v0, v2, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 3137
    instance-of v3, v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnNewIntent;

    if-eqz v3, :cond_0

    .line 3138
    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnNewIntent;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnNewIntent;->onNewIntent(Landroid/content/Intent;)V

    .line 3135
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 193
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 265
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 4187
    iget-object v0, v0, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 4188
    instance-of v3, v0, Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnOptionsItemSelected;

    if-eqz v3, :cond_0

    .line 4189
    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnOptionsItemSelected;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnOptionsItemSelected;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 265
    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    .line 268
    :goto_1
    return v0

    .line 4194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 268
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    invoke-virtual {v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onPause()V

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 78
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onPostCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 48
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    invoke-virtual {v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onPostResume()V

    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 72
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 4175
    const/4 v0, 0x0

    .line 4177
    iget-object v1, v1, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 4178
    instance-of v0, v0, Lcom/google/android/libraries/stitch/lifecycle/LifecycleInterfaces$OnPrepareOptionsMenu;

    if-eqz v0, :cond_2

    .line 4179
    or-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 4181
    goto :goto_0

    .line 257
    :cond_0
    if-eqz v1, :cond_1

    .line 258
    const/4 v0, 0x1

    .line 260
    :goto_2
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    .line 309
    iget-object v2, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 4277
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, v2, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 4278
    iget-object v0, v2, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 4279
    instance-of v3, v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnRequestPermissionsResult;

    if-eqz v3, :cond_0

    .line 4280
    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnRequestPermissionsResult;

    .line 4281
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnRequestPermissionsResult;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 4277
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 310
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 311
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    invoke-virtual {v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onResume()V

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 66
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    invoke-virtual {v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onStart()V

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 54
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    invoke-virtual {v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->onStop()V

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 84
    return-void
.end method

.method public onUserInteraction()V
    .locals 4

    .prologue
    .line 296
    iget-object v2, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 4258
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, v2, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 4259
    iget-object v0, v2, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 4260
    instance-of v3, v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnUserInteraction;

    if-eqz v3, :cond_0

    .line 4261
    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnUserInteraction;

    invoke-interface {v0}, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnUserInteraction;->onUserInteraction()V

    .line 4258
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 297
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 298
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 3144
    const/4 v0, 0x0

    :goto_0
    iget-object v2, v1, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3145
    iget-object v2, v1, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 200
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    .line 112
    iget-object v2, p0, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->lifecycle:Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;

    .line 1126
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, v2, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1127
    iget-object v0, v2, Lcom/google/android/libraries/stitch/lifecycle/ActivityLifecycle;->observers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 1128
    instance-of v3, v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnWindowFocusChanged;

    if-eqz v3, :cond_0

    .line 1129
    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnWindowFocusChanged;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnWindowFocusChanged;->onWindowFocusChanged(Z)V

    .line 1126
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 113
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 114
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->beginStartActivity(Landroid/content/Intent;)V

    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 132
    invoke-direct {p0}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->endStartActivity()V

    .line 133
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->beginStartActivity(Landroid/content/Intent;)V

    .line 138
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 139
    invoke-direct {p0}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->endStartActivity()V

    .line 140
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->beginStartActivity(Landroid/content/Intent;)V

    .line 164
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 165
    invoke-direct {p0}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->endStartActivity()V

    .line 166
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->beginStartActivity(Landroid/content/Intent;)V

    .line 172
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 173
    invoke-direct {p0}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->endStartActivity()V

    .line 174
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p2}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->beginStartActivity(Landroid/content/Intent;)V

    .line 146
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    .line 147
    invoke-direct {p0}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->endStartActivity()V

    .line 148
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p2}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->beginStartActivity(Landroid/content/Intent;)V

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 158
    invoke-direct {p0}, Lcom/google/android/libraries/stitch/lifecycle/ObservableActivity;->endStartActivity()V

    .line 159
    return-void
.end method
