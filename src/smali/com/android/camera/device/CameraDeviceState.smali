.class Lcom/android/camera/device/CameraDeviceState;
.super Ljava/lang/Object;
.source "CameraDeviceState.java"

# interfaces
.implements Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/device/CameraDeviceState$InvokeCloseWhenCameraDeviceClosed;,
        Lcom/android/camera/device/CameraDeviceState$OnClosed;,
        Lcom/android/camera/device/CameraDeviceState$OnError;,
        Lcom/android/camera/device/CameraDeviceState$OnDisconnected;,
        Lcom/android/camera/device/CameraDeviceState$OnOpened;,
        Lcom/android/camera/device/CameraDeviceState$StateTransition;,
        Lcom/android/camera/device/CameraDeviceState$State;
    }
.end annotation


# instance fields
.field private cameraDevice:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

.field private clearListenersAfterInvoking:Z

.field private isInvokingListeners:Z

.field private lastStateTransition:Lcom/android/camera/device/CameraDeviceState$StateTransition;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

.field private final transitions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/camera/device/CameraDeviceState$StateTransition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceState;->lock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceState;->listeners:Ljava/util/Set;

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceState;->transitions:Ljava/util/Queue;

    .line 78
    sget v0, Lcom/android/camera/device/CameraDeviceState$State;->OPENING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    iput v0, p0, Lcom/android/camera/device/CameraDeviceState;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/device/CameraDeviceState;->isInvokingListeners:Z

    .line 80
    return-void
.end method

.method private final invokeListeners(Z)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 212
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceState;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/device/CameraDeviceState;->clearListenersAfterInvoking:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/android/camera/device/CameraDeviceState;->clearListenersAfterInvoking:Z

    .line 216
    iget-boolean v0, p0, Lcom/android/camera/device/CameraDeviceState;->isInvokingListeners:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceState;->transitions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 217
    :cond_0
    monitor-exit v1

    .line 253
    :goto_0
    return-void

    .line 219
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/device/CameraDeviceState;->isInvokingListeners:Z

    .line 220
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_2
    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceState;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 227
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceState;->transitions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceState;->transitions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/device/CameraDeviceState$StateTransition;

    .line 229
    iput-object v0, p0, Lcom/android/camera/device/CameraDeviceState;->lastStateTransition:Lcom/android/camera/device/CameraDeviceState$StateTransition;

    .line 241
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceState;->listeners:Ljava/util/Set;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 242
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    check-cast v1, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_5

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;

    .line 250
    invoke-interface {v0, v2}, Lcom/android/camera/device/CameraDeviceState$StateTransition;->invoke(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V

    goto :goto_1

    .line 220
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 231
    :cond_3
    :try_start_3
    iget-boolean v0, p0, Lcom/android/camera/device/CameraDeviceState;->clearListenersAfterInvoking:Z

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceState;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 234
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/device/CameraDeviceState;->isInvokingListeners:Z

    .line 235
    monitor-exit v2

    goto :goto_0

    .line 242
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 252
    :cond_5
    if-nez v0, :cond_2

    goto :goto_0
.end method


# virtual methods
.method public final addListener(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceState;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget v0, p0, Lcom/android/camera/device/CameraDeviceState;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    sget v2, Lcom/android/camera/device/CameraDeviceState$State;->DISCONNECTED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/camera/device/CameraDeviceState;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    sget v2, Lcom/android/camera/device/CameraDeviceState$State;->ERROR$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/camera/device/CameraDeviceState;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    sget v2, Lcom/android/camera/device/CameraDeviceState$State;->CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    if-eq v0, v2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceState;->lastStateTransition:Lcom/android/camera/device/CameraDeviceState$StateTransition;

    .line 95
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    invoke-interface {v0, p1}, Lcom/android/camera/device/CameraDeviceState$StateTransition;->invoke(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V

    .line 100
    :cond_1
    return-void

    .line 95
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/camera/device/CameraDeviceState;->onClosed()V

    .line 209
    return-void
.end method

.method public final onClosed()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 174
    .line 175
    const/4 v1, 0x0

    .line 176
    iget-object v3, p0, Lcom/android/camera/device/CameraDeviceState;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 179
    :try_start_0
    iget v4, p0, Lcom/android/camera/device/CameraDeviceState;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    sget v5, Lcom/android/camera/device/CameraDeviceState$State;->OPENING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/camera/device/CameraDeviceState;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    sget v5, Lcom/android/camera/device/CameraDeviceState$State;->OPENED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    if-ne v4, v5, :cond_1

    .line 180
    :cond_0
    sget v1, Lcom/android/camera/device/CameraDeviceState$State;->CLOSED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    iput v1, p0, Lcom/android/camera/device/CameraDeviceState;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    .line 181
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceState;->transitions:Ljava/util/Queue;

    new-instance v4, Lcom/android/camera/device/CameraDeviceState$OnClosed;

    invoke-direct {v4, p0}, Lcom/android/camera/device/CameraDeviceState$OnClosed;-><init>(Lcom/android/camera/device/CameraDeviceState;)V

    invoke-interface {v1, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 191
    :cond_1
    iget-object v4, p0, Lcom/android/camera/device/CameraDeviceState;->cameraDevice:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    if-eqz v4, :cond_2

    .line 192
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceState;->cameraDevice:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    .line 193
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/device/CameraDeviceState;->cameraDevice:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    .line 195
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    if-eqz v1, :cond_3

    .line 198
    invoke-direct {p0, v2}, Lcom/android/camera/device/CameraDeviceState;->invokeListeners(Z)V

    .line 201
    :cond_3
    if-eqz v0, :cond_4

    .line 202
    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 204
    :cond_4
    return-void

    .line 195
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDisconnected()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 141
    const/4 v0, 0x0

    .line 142
    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceState;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 143
    :try_start_0
    iget v3, p0, Lcom/android/camera/device/CameraDeviceState;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    sget v4, Lcom/android/camera/device/CameraDeviceState$State;->OPENING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/device/CameraDeviceState;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    sget v4, Lcom/android/camera/device/CameraDeviceState$State;->OPENED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    if-ne v3, v4, :cond_1

    .line 144
    :cond_0
    sget v0, Lcom/android/camera/device/CameraDeviceState$State;->DISCONNECTED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    iput v0, p0, Lcom/android/camera/device/CameraDeviceState;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    .line 145
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceState;->transitions:Ljava/util/Queue;

    new-instance v3, Lcom/android/camera/device/CameraDeviceState$OnDisconnected;

    invoke-direct {v3, p0}, Lcom/android/camera/device/CameraDeviceState$OnDisconnected;-><init>(Lcom/android/camera/device/CameraDeviceState;)V

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 148
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    if-eqz v0, :cond_2

    .line 150
    invoke-direct {p0, v1}, Lcom/android/camera/device/CameraDeviceState;->invokeListeners(Z)V

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/device/CameraDeviceState;->close()V

    .line 153
    return-void

    .line 148
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onError(I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 157
    const/4 v0, 0x0

    .line 158
    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceState;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    :try_start_0
    iget v3, p0, Lcom/android/camera/device/CameraDeviceState;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    sget v4, Lcom/android/camera/device/CameraDeviceState$State;->OPENING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/device/CameraDeviceState;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    sget v4, Lcom/android/camera/device/CameraDeviceState$State;->OPENED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    if-ne v3, v4, :cond_1

    .line 160
    :cond_0
    sget v0, Lcom/android/camera/device/CameraDeviceState$State;->ERROR$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    iput v0, p0, Lcom/android/camera/device/CameraDeviceState;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    .line 161
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceState;->transitions:Ljava/util/Queue;

    new-instance v3, Lcom/android/camera/device/CameraDeviceState$OnError;

    invoke-direct {v3, p1}, Lcom/android/camera/device/CameraDeviceState$OnError;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 164
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    if-eqz v0, :cond_2

    .line 167
    invoke-direct {p0, v1}, Lcom/android/camera/device/CameraDeviceState;->invokeListeners(Z)V

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/device/CameraDeviceState;->close()V

    .line 170
    return-void

    .line 164
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onOpened(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    .line 117
    iget-object v3, p0, Lcom/android/camera/device/CameraDeviceState;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 118
    :try_start_0
    iget v2, p0, Lcom/android/camera/device/CameraDeviceState;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    sget v4, Lcom/android/camera/device/CameraDeviceState$State;->OPENING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    if-ne v2, v4, :cond_3

    .line 119
    sget v2, Lcom/android/camera/device/CameraDeviceState$State;->OPENED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    iput v2, p0, Lcom/android/camera/device/CameraDeviceState;->state$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHINCQB3CKNK6OBDCLP62H35EPKM6PAJEHGN8P94ADQ62T357C______:I

    .line 120
    new-instance v2, Lcom/android/camera/device/CameraDeviceState$InvokeCloseWhenCameraDeviceClosed;

    invoke-direct {v2, p1, p0}, Lcom/android/camera/device/CameraDeviceState$InvokeCloseWhenCameraDeviceClosed;-><init>(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;Lcom/android/camera/device/CameraDeviceState;)V

    iput-object v2, p0, Lcom/android/camera/device/CameraDeviceState;->cameraDevice:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    .line 121
    iget-object v2, p0, Lcom/android/camera/device/CameraDeviceState;->transitions:Ljava/util/Queue;

    new-instance v4, Lcom/android/camera/device/CameraDeviceState$OnOpened;

    iget-object v5, p0, Lcom/android/camera/device/CameraDeviceState;->cameraDevice:Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;

    invoke-direct {v4, v5}, Lcom/android/camera/device/CameraDeviceState$OnOpened;-><init>(Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;)V

    invoke-interface {v2, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 126
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0, v1}, Lcom/android/camera/device/CameraDeviceState;->invokeListeners(Z)V

    .line 131
    :cond_0
    if-eqz v2, :cond_2

    .line 132
    if-eqz p1, :cond_1

    .line 133
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;->close()V

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/device/CameraDeviceState;->close()V

    .line 137
    :cond_2
    return-void

    :cond_3
    move v2, v0

    move v0, v1

    .line 124
    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final removeListener(Lcom/android/camera/device/CameraDeviceManagerV2$CameraDeviceListener;)V
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/camera/device/CameraDeviceState;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/device/CameraDeviceState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 110
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
