@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs libxcb 2> /dev/null|| printf %s '-lxcb'`")]
lib LibXCB
  $xcb_render_id : XcbExtensionT
  $xcb_shm_id : XcbExtensionT
  alias Int16T = X__Int16T
  alias Int32T = X__Int32T
  alias Int8T = X__Int8T
  alias Uint16T = X__Uint16T
  alias Uint32T = X__Uint32T
  alias Uint64T = X__Uint64T
  alias Uint8T = X__Uint8T
  alias X__Int16T = LibC::Short
  alias X__Int32T = LibC::Int
  alias X__Int8T = LibC::Char
  alias X__Uint16T = LibC::UShort
  alias X__Uint32T = LibC::UInt
  alias X__Uint64T = LibC::ULong
  alias X__Uint8T = UInt8
  alias XcbAtomT = Uint32T
  alias XcbBool32T = Uint32T
  alias XcbButtonT = Uint8T
  alias XcbColormapT = Uint32T
  alias XcbConnectionT = Void
  alias XcbCursorContextT = Void
  alias XcbCursorT = Uint32T
  alias XcbDrawableT = Uint32T
  alias XcbFontT = Uint32T
  alias XcbFontableT = Uint32T
  alias XcbGcontextT = Uint32T
  alias XcbKeyReleaseEventT = XcbKeyPressEventT
  alias XcbKeycode32T = Uint32T
  alias XcbKeycodeT = Uint8T
  alias XcbKeysymT = Uint32T
  alias XcbPixmapT = Uint32T
  alias XcbRenderFixedT = Int32T
  alias XcbRenderGlyphT = Uint32T
  alias XcbRenderGlyphsetT = Uint32T
  alias XcbRenderPictformatT = Uint32T
  alias XcbRenderPictureT = Uint32T
  alias XcbRenderUtilCompositeTextStreamT = Void
  alias XcbShmSegT = Uint32T
  alias XcbSpecialEvent = Void
  alias XcbTimestampT = Uint32T
  alias XcbVisualidT = Uint32T
  alias XcbWindowT = Uint32T
  alias XcbXrmDatabaseT = Void
  enum XcbButtonIndexT
    XcbButtonIndexAny = 0
    XcbButtonIndex1   = 1
    XcbButtonIndex2   = 2
    XcbButtonIndex3   = 3
    XcbButtonIndex4   = 4
    XcbButtonIndex5   = 5
  end
  # Source indication in requests
  enum XcbEwmhClientSourceTypeT
    # No source at all (for clients supporting an older version of EWMH specification)
    XcbEwmhClientSourceTypeNone = 0
    # Normal application
    XcbEwmhClientSourceTypeNormal = 1
    # Pagers and other clients that represent direct user actions
    XcbEwmhClientSourceTypeOther = 2
  end
  # _NET_DESKTOP_LAYOUT orientation
  enum XcbEwmhDesktopLayoutOrientationT
    # Horizontal orientation (desktops laid out in rows)
    XcbEwmhWmOrientationHorz = 0
    # Vertical orientation (desktops laid out in columns)
    XcbEwmhWmOrientationVert = 1
  end
  # _NET_DESKTOP_LAYOUT starting corner
  enum XcbEwmhDesktopLayoutStartingCornerT
    # Starting corner on the top left
    XcbEwmhWmTopleft = 0
    # Starting corner on the top right
    XcbEwmhWmTopright = 1
    # Starting corner on the bottom right
    XcbEwmhWmBottomright = 2
    # Starting corner on the bottom left
    XcbEwmhWmBottomleft = 3
  end
  # _NET_WM_MOVERESIZE window movement or resizing
  enum XcbEwmhMoveresizeDirectionT
    # Resizing applied on the top left edge
    XcbEwmhWmMoveresizeSizeTopleft = 0
    # Resizing applied on the top edge
    XcbEwmhWmMoveresizeSizeTop = 1
    # Resizing applied on the top right edge
    XcbEwmhWmMoveresizeSizeTopright = 2
    # Resizing applied on the right edge
    XcbEwmhWmMoveresizeSizeRight = 3
    # Resizing applied on the bottom right edge
    XcbEwmhWmMoveresizeSizeBottomright = 4
    # Resizing applied on the bottom edge
    XcbEwmhWmMoveresizeSizeBottom = 5
    # Resizing applied on the bottom left edge
    XcbEwmhWmMoveresizeSizeBottomleft = 6
    # Resizing applied on the left edge
    XcbEwmhWmMoveresizeSizeLeft = 7
    # Resizing applied on the left edge
    XcbEwmhWmMoveresizeMove = 8
    # Resizing applied on the left edge
    XcbEwmhWmMoveresizeSizeKeyboard = 9
    # Resizing applied on the left edge
    XcbEwmhWmMoveresizeMoveKeyboard = 10
    # Resizing applied on the left edge
    XcbEwmhWmMoveresizeCancel = 11
  end
  # _NET_WM_MOVERESIZE value when moving via keyboard
  enum XcbEwmhMoveresizeWindowOptFlagsT
    # The window x coordinate
    XcbEwmhMoveresizeWindowX = 256
    # The window y coordinate
    XcbEwmhMoveresizeWindowY = 512
    # The window width
    XcbEwmhMoveresizeWindowWidth = 1024
    # The window height
    XcbEwmhMoveresizeWindowHeight = 2048
  end
  # Action on the _NET_WM_STATE property
  enum XcbEwmhWmStateActionT
    XcbEwmhWmStateRemove = 0
    XcbEwmhWmStateAdd    = 1
    XcbEwmhWmStateToggle = 2
  end
  enum XcbGravityT
    XcbGravityBitForget =  0
    XcbGravityWinUnmap  =  0
    XcbGravityNorthWest =  1
    XcbGravityNorth     =  2
    XcbGravityNorthEast =  3
    XcbGravityWest      =  4
    XcbGravityCenter    =  5
    XcbGravityEast      =  6
    XcbGravitySouthWest =  7
    XcbGravitySouth     =  8
    XcbGravitySouthEast =  9
    XcbGravityStatic    = 10
  end
  enum XcbImageFormatT
    XcbImageFormatXyBitmap = 0
    XcbImageFormatXyPixmap = 1
    XcbImageFormatZPixmap  = 2
  end
  enum XcbImageOrderT
    XcbImageOrderLsbFirst = 0
    XcbImageOrderMsbFirst = 1
  end
  enum XcbPictStandardT
    XcbPictStandardArgb32 = 0
    XcbPictStandardRgb24  = 1
    XcbPictStandardA8     = 2
    XcbPictStandardA4     = 3
    XcbPictStandardA1     = 4
  end
  enum XcbStackModeT
    XcbStackModeAbove    = 0
    XcbStackModeBelow    = 1
    XcbStackModeTopIf    = 2
    XcbStackModeBottomIf = 3
    XcbStackModeOpposite = 4
  end
  # Allocate a color
  fun xcb_alloc_color(c : XcbConnectionT, cmap : XcbColormapT, red : Uint16T, green : Uint16T, blue : Uint16T) : XcbAllocColorCookieT
  # Returns A cookie
  fun xcb_alloc_color_cells(c : XcbConnectionT, contiguous : Uint8T, cmap : XcbColormapT, colors : Uint16T, planes : Uint16T) : XcbAllocColorCellsCookieT
  fun xcb_alloc_color_cells_masks(r : XcbAllocColorCellsReplyT*) : Uint32T*
  fun xcb_alloc_color_cells_masks_end(r : XcbAllocColorCellsReplyT*) : XcbGenericIteratorT
  fun xcb_alloc_color_cells_masks_length(r : XcbAllocColorCellsReplyT*) : LibC::Int
  fun xcb_alloc_color_cells_pixels(r : XcbAllocColorCellsReplyT*) : Uint32T*
  fun xcb_alloc_color_cells_pixels_end(r : XcbAllocColorCellsReplyT*) : XcbGenericIteratorT
  fun xcb_alloc_color_cells_pixels_length(r : XcbAllocColorCellsReplyT*) : LibC::Int
  # Return the reply
  fun xcb_alloc_color_cells_reply(c : XcbConnectionT, cookie : XcbAllocColorCellsCookieT, e : XcbGenericErrorT**) : XcbAllocColorCellsReplyT*
  fun xcb_alloc_color_cells_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_alloc_color_cells_unchecked(c : XcbConnectionT, contiguous : Uint8T, cmap : XcbColormapT, colors : Uint16T, planes : Uint16T) : XcbAllocColorCellsCookieT
  # Returns A cookie
  fun xcb_alloc_color_planes(c : XcbConnectionT, contiguous : Uint8T, cmap : XcbColormapT, colors : Uint16T, reds : Uint16T, greens : Uint16T, blues : Uint16T) : XcbAllocColorPlanesCookieT
  fun xcb_alloc_color_planes_pixels(r : XcbAllocColorPlanesReplyT*) : Uint32T*
  fun xcb_alloc_color_planes_pixels_end(r : XcbAllocColorPlanesReplyT*) : XcbGenericIteratorT
  fun xcb_alloc_color_planes_pixels_length(r : XcbAllocColorPlanesReplyT*) : LibC::Int
  # Return the reply
  fun xcb_alloc_color_planes_reply(c : XcbConnectionT, cookie : XcbAllocColorPlanesCookieT, e : XcbGenericErrorT**) : XcbAllocColorPlanesReplyT*
  fun xcb_alloc_color_planes_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_alloc_color_planes_unchecked(c : XcbConnectionT, contiguous : Uint8T, cmap : XcbColormapT, colors : Uint16T, reds : Uint16T, greens : Uint16T, blues : Uint16T) : XcbAllocColorPlanesCookieT
  # Return the reply
  fun xcb_alloc_color_reply(c : XcbConnectionT, cookie : XcbAllocColorCookieT, e : XcbGenericErrorT**) : XcbAllocColorReplyT*
  # Allocate a color
  fun xcb_alloc_color_unchecked(c : XcbConnectionT, cmap : XcbColormapT, red : Uint16T, green : Uint16T, blue : Uint16T) : XcbAllocColorCookieT
  # Returns A cookie
  fun xcb_alloc_named_color(c : XcbConnectionT, cmap : XcbColormapT, name_len : Uint16T, name : LibC::Char*) : XcbAllocNamedColorCookieT
  # Return the reply
  fun xcb_alloc_named_color_reply(c : XcbConnectionT, cookie : XcbAllocNamedColorCookieT, e : XcbGenericErrorT**) : XcbAllocNamedColorReplyT*
  fun xcb_alloc_named_color_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_alloc_named_color_unchecked(c : XcbConnectionT, cmap : XcbColormapT, name_len : Uint16T, name : LibC::Char*) : XcbAllocNamedColorCookieT
  # release queued events
  fun xcb_allow_events(c : XcbConnectionT, mode : Uint8T, time : XcbTimestampT) : XcbVoidCookieT
  # release queued events
  fun xcb_allow_events_checked(c : XcbConnectionT, mode : Uint8T, time : XcbTimestampT) : XcbVoidCookieT
  # Return the iterator pointing to the last element
  fun xcb_arc_end(i : XcbArcIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_arc_next(i : XcbArcIteratorT*)
  # Return the iterator pointing to the last element
  fun xcb_atom_end(i : XcbAtomIteratorT) : XcbGenericIteratorT
  fun xcb_atom_name_by_resource(base : LibC::Char*, resource : Uint32T) : LibC::Char*
  fun xcb_atom_name_by_screen(base : LibC::Char*, screen : Uint8T) : LibC::Char*
  fun xcb_atom_name_unique(base : LibC::Char*, id : Uint32T) : LibC::Char*
  # Get the next element of the iterator
  fun xcb_atom_next(i : XcbAtomIteratorT*)
  fun xcb_aux_change_gc(c : XcbConnectionT, gc : XcbGcontextT, mask : Uint32T, params : XcbParamsGcT*) : XcbVoidCookieT
  fun xcb_aux_change_gc_checked(c : XcbConnectionT, gc : XcbGcontextT, mask : Uint32T, params : XcbParamsGcT*) : XcbVoidCookieT
  fun xcb_aux_change_keyboard_control(c : XcbConnectionT, mask : Uint32T, params : XcbParamsKeyboardT*) : XcbVoidCookieT
  fun xcb_aux_change_window_attributes(c : XcbConnectionT, window : XcbWindowT, mask : Uint32T, params : XcbParamsCwT*) : XcbVoidCookieT
  fun xcb_aux_change_window_attributes_checked(c : XcbConnectionT, window : XcbWindowT, mask : Uint32T, params : XcbParamsCwT*) : XcbVoidCookieT
  fun xcb_aux_clear_window(dpy : XcbConnectionT, w : XcbWindowT) : XcbVoidCookieT
  fun xcb_aux_configure_window(c : XcbConnectionT, window : XcbWindowT, mask : Uint16T, params : XcbParamsConfigureWindowT*) : XcbVoidCookieT
  fun xcb_aux_create_gc(c : XcbConnectionT, cid : XcbGcontextT, drawable : XcbDrawableT, mask : Uint32T, params : XcbParamsGcT*) : XcbVoidCookieT
  fun xcb_aux_create_gc_checked(c : XcbConnectionT, gid : XcbGcontextT, drawable : XcbDrawableT, mask : Uint32T, params : XcbParamsGcT*) : XcbVoidCookieT
  fun xcb_aux_create_window(c : XcbConnectionT, depth : Uint8T, wid : XcbWindowT, parent : XcbWindowT, x : Int16T, y : Int16T, width : Uint16T, height : Uint16T, border_width : Uint16T, class_ : Uint16T, visual : XcbVisualidT, mask : Uint32T, params : XcbParamsCwT*) : XcbVoidCookieT
  fun xcb_aux_create_window_checked(c : XcbConnectionT, depth : Uint8T, wid : XcbWindowT, parent : XcbWindowT, x : Int16T, y : Int16T, width : Uint16T, height : Uint16T, border_width : Uint16T, class_ : Uint16T, visual : XcbVisualidT, mask : Uint32T, params : XcbParamsCwT*) : XcbVoidCookieT
  fun xcb_aux_find_visual_by_attrs(screen : XcbScreenT*, class_ : Int8T, depth : Int8T) : XcbVisualtypeT*
  fun xcb_aux_find_visual_by_id(screen : XcbScreenT*, id : XcbVisualidT) : XcbVisualtypeT*
  fun xcb_aux_get_depth(c : XcbConnectionT, screen : XcbScreenT*) : Uint8T
  fun xcb_aux_get_depth_of_visual(screen : XcbScreenT*, id : XcbVisualidT) : Uint8T
  fun xcb_aux_get_screen(c : XcbConnectionT, screen : LibC::Int) : XcbScreenT*
  fun xcb_aux_get_visualtype(c : XcbConnectionT, screen : LibC::Int, vid : XcbVisualidT) : XcbVisualtypeT*
  fun xcb_aux_parse_color(color_name : LibC::Char*, red : Uint16T*, green : Uint16T*, blue : Uint16T*) : LibC::Int
  fun xcb_aux_set_line_attributes_checked(dpy : XcbConnectionT, gc : XcbGcontextT, linewidth : Uint16T, linestyle : Int32T, capstyle : Int32T, joinstyle : Int32T) : XcbVoidCookieT
  fun xcb_aux_sync(c : XcbConnectionT)
  # Returns A cookie
  fun xcb_bell(c : XcbConnectionT, percent : Int8T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_bell_checked(c : XcbConnectionT, percent : Int8T) : XcbVoidCookieT
  # Reverse bits of word.
  fun xcb_bit_reverse(x : Uint32T, n : Uint8T) : Uint32T
  # Return the iterator pointing to the last element
  fun xcb_bool32_end(i : XcbBool32IteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_bool32_next(i : XcbBool32IteratorT*)
  # Return the iterator pointing to the last element
  fun xcb_button_end(i : XcbButtonIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_button_next(i : XcbButtonIteratorT*)
  # Returns A cookie
  fun xcb_change_active_pointer_grab(c : XcbConnectionT, cursor : XcbCursorT, time : XcbTimestampT, event_mask : Uint16T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_change_active_pointer_grab_checked(c : XcbConnectionT, cursor : XcbCursorT, time : XcbTimestampT, event_mask : Uint16T) : XcbVoidCookieT
  # change graphics context components
  fun xcb_change_gc(c : XcbConnectionT, gc : XcbGcontextT, value_mask : Uint32T, value_list : Void*) : XcbVoidCookieT
  # change graphics context components
  fun xcb_change_gc_aux(c : XcbConnectionT, gc : XcbGcontextT, value_mask : Uint32T, value_list : XcbChangeGcValueListT*) : XcbVoidCookieT
  # change graphics context components
  fun xcb_change_gc_aux_checked(c : XcbConnectionT, gc : XcbGcontextT, value_mask : Uint32T, value_list : XcbChangeGcValueListT*) : XcbVoidCookieT
  # change graphics context components
  fun xcb_change_gc_checked(c : XcbConnectionT, gc : XcbGcontextT, value_mask : Uint32T, value_list : Void*) : XcbVoidCookieT
  fun xcb_change_gc_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_change_gc_value_list(r : XcbChangeGcRequestT*) : Void*
  fun xcb_change_gc_value_list_serialize(_buffer : Void**, value_mask : Uint32T, _aux : XcbChangeGcValueListT*) : LibC::Int
  fun xcb_change_gc_value_list_sizeof(_buffer : Void*, value_mask : Uint32T) : LibC::Int
  fun xcb_change_gc_value_list_unpack(_buffer : Void*, value_mask : Uint32T, _aux : XcbChangeGcValueListT*) : LibC::Int
  # Returns A cookie
  fun xcb_change_hosts(c : XcbConnectionT, mode : Uint8T, family : Uint8T, address_len : Uint16T, address : Uint8T*) : XcbVoidCookieT
  fun xcb_change_hosts_address(r : XcbChangeHostsRequestT*) : Uint8T*
  fun xcb_change_hosts_address_end(r : XcbChangeHostsRequestT*) : XcbGenericIteratorT
  fun xcb_change_hosts_address_length(r : XcbChangeHostsRequestT*) : LibC::Int
  # Returns A cookie
  fun xcb_change_hosts_checked(c : XcbConnectionT, mode : Uint8T, family : Uint8T, address_len : Uint16T, address : Uint8T*) : XcbVoidCookieT
  fun xcb_change_hosts_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_change_keyboard_control(c : XcbConnectionT, value_mask : Uint32T, value_list : Void*) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_change_keyboard_control_aux(c : XcbConnectionT, value_mask : Uint32T, value_list : XcbChangeKeyboardControlValueListT*) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_change_keyboard_control_aux_checked(c : XcbConnectionT, value_mask : Uint32T, value_list : XcbChangeKeyboardControlValueListT*) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_change_keyboard_control_checked(c : XcbConnectionT, value_mask : Uint32T, value_list : Void*) : XcbVoidCookieT
  fun xcb_change_keyboard_control_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_change_keyboard_control_value_list(r : XcbChangeKeyboardControlRequestT*) : Void*
  fun xcb_change_keyboard_control_value_list_serialize(_buffer : Void**, value_mask : Uint32T, _aux : XcbChangeKeyboardControlValueListT*) : LibC::Int
  fun xcb_change_keyboard_control_value_list_sizeof(_buffer : Void*, value_mask : Uint32T) : LibC::Int
  fun xcb_change_keyboard_control_value_list_unpack(_buffer : Void*, value_mask : Uint32T, _aux : XcbChangeKeyboardControlValueListT*) : LibC::Int
  # Returns A cookie
  fun xcb_change_keyboard_mapping(c : XcbConnectionT, keycode_count : Uint8T, first_keycode : XcbKeycodeT, keysyms_per_keycode : Uint8T, keysyms : XcbKeysymT*) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_change_keyboard_mapping_checked(c : XcbConnectionT, keycode_count : Uint8T, first_keycode : XcbKeycodeT, keysyms_per_keycode : Uint8T, keysyms : XcbKeysymT*) : XcbVoidCookieT
  fun xcb_change_keyboard_mapping_keysyms(r : XcbChangeKeyboardMappingRequestT*) : XcbKeysymT*
  fun xcb_change_keyboard_mapping_keysyms_end(r : XcbChangeKeyboardMappingRequestT*) : XcbGenericIteratorT
  fun xcb_change_keyboard_mapping_keysyms_length(r : XcbChangeKeyboardMappingRequestT*) : LibC::Int
  fun xcb_change_keyboard_mapping_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_change_pointer_control(c : XcbConnectionT, acceleration_numerator : Int16T, acceleration_denominator : Int16T, threshold : Int16T, do_acceleration : Uint8T, do_threshold : Uint8T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_change_pointer_control_checked(c : XcbConnectionT, acceleration_numerator : Int16T, acceleration_denominator : Int16T, threshold : Int16T, do_acceleration : Uint8T, do_threshold : Uint8T) : XcbVoidCookieT
  # Changes a window property
  fun xcb_change_property(c : XcbConnectionT, mode : Uint8T, window : XcbWindowT, property : XcbAtomT, type : XcbAtomT, format : Uint8T, data_len : Uint32T, data : Void*) : XcbVoidCookieT
  # Changes a window property
  fun xcb_change_property_checked(c : XcbConnectionT, mode : Uint8T, window : XcbWindowT, property : XcbAtomT, type : XcbAtomT, format : Uint8T, data_len : Uint32T, data : Void*) : XcbVoidCookieT
  fun xcb_change_property_data(r : XcbChangePropertyRequestT*) : Void*
  fun xcb_change_property_data_end(r : XcbChangePropertyRequestT*) : XcbGenericIteratorT
  fun xcb_change_property_data_length(r : XcbChangePropertyRequestT*) : LibC::Int
  fun xcb_change_property_sizeof(_buffer : Void*) : LibC::Int
  # Changes a client's save set
  fun xcb_change_save_set(c : XcbConnectionT, mode : Uint8T, window : XcbWindowT) : XcbVoidCookieT
  # Changes a client's save set
  fun xcb_change_save_set_checked(c : XcbConnectionT, mode : Uint8T, window : XcbWindowT) : XcbVoidCookieT
  # change window attributes
  fun xcb_change_window_attributes(c : XcbConnectionT, window : XcbWindowT, value_mask : Uint32T, value_list : Void*) : XcbVoidCookieT
  # change window attributes
  fun xcb_change_window_attributes_aux(c : XcbConnectionT, window : XcbWindowT, value_mask : Uint32T, value_list : XcbChangeWindowAttributesValueListT*) : XcbVoidCookieT
  # change window attributes
  fun xcb_change_window_attributes_aux_checked(c : XcbConnectionT, window : XcbWindowT, value_mask : Uint32T, value_list : XcbChangeWindowAttributesValueListT*) : XcbVoidCookieT
  # change window attributes
  fun xcb_change_window_attributes_checked(c : XcbConnectionT, window : XcbWindowT, value_mask : Uint32T, value_list : Void*) : XcbVoidCookieT
  fun xcb_change_window_attributes_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_change_window_attributes_value_list(r : XcbChangeWindowAttributesRequestT*) : Void*
  fun xcb_change_window_attributes_value_list_serialize(_buffer : Void**, value_mask : Uint32T, _aux : XcbChangeWindowAttributesValueListT*) : LibC::Int
  fun xcb_change_window_attributes_value_list_sizeof(_buffer : Void*, value_mask : Uint32T) : LibC::Int
  fun xcb_change_window_attributes_value_list_unpack(_buffer : Void*, value_mask : Uint32T, _aux : XcbChangeWindowAttributesValueListT*) : LibC::Int
  # Return the iterator pointing to the last element
  fun xcb_char2b_end(i : XcbChar2bIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_char2b_next(i : XcbChar2bIteratorT*)
  # Return the iterator pointing to the last element
  fun xcb_charinfo_end(i : XcbCharinfoIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_charinfo_next(i : XcbCharinfoIteratorT*)
  # Change window stacking order
  fun xcb_circulate_window(c : XcbConnectionT, direction : Uint8T, window : XcbWindowT) : XcbVoidCookieT
  # Change window stacking order
  fun xcb_circulate_window_checked(c : XcbConnectionT, direction : Uint8T, window : XcbWindowT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_clear_area(c : XcbConnectionT, exposures : Uint8T, window : XcbWindowT, x : Int16T, y : Int16T, width : Uint16T, height : Uint16T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_clear_area_checked(c : XcbConnectionT, exposures : Uint8T, window : XcbWindowT, x : Int16T, y : Int16T, width : Uint16T, height : Uint16T) : XcbVoidCookieT
  # Return the iterator pointing to the last element
  fun xcb_client_message_data_end(i : XcbClientMessageDataIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_client_message_data_next(i : XcbClientMessageDataIteratorT*)
  # Returns A cookie
  fun xcb_close_font(c : XcbConnectionT, font : XcbFontT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_close_font_checked(c : XcbConnectionT, font : XcbFontT) : XcbVoidCookieT
  # Return the iterator pointing to the last element
  fun xcb_coloritem_end(i : XcbColoritemIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_coloritem_next(i : XcbColoritemIteratorT*)
  # Return the iterator pointing to the last element
  fun xcb_colormap_end(i : XcbColormapIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_colormap_next(i : XcbColormapIteratorT*)
  # Configures window attributes
  fun xcb_configure_window(c : XcbConnectionT, window : XcbWindowT, value_mask : Uint16T, value_list : Void*) : XcbVoidCookieT
  # Configures window attributes
  fun xcb_configure_window_aux(c : XcbConnectionT, window : XcbWindowT, value_mask : Uint16T, value_list : XcbConfigureWindowValueListT*) : XcbVoidCookieT
  # Configures window attributes
  fun xcb_configure_window_aux_checked(c : XcbConnectionT, window : XcbWindowT, value_mask : Uint16T, value_list : XcbConfigureWindowValueListT*) : XcbVoidCookieT
  # Configures window attributes
  fun xcb_configure_window_checked(c : XcbConnectionT, window : XcbWindowT, value_mask : Uint16T, value_list : Void*) : XcbVoidCookieT
  fun xcb_configure_window_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_configure_window_value_list(r : XcbConfigureWindowRequestT*) : Void*
  fun xcb_configure_window_value_list_serialize(_buffer : Void**, value_mask : Uint16T, _aux : XcbConfigureWindowValueListT*) : LibC::Int
  fun xcb_configure_window_value_list_sizeof(_buffer : Void*, value_mask : Uint16T) : LibC::Int
  fun xcb_configure_window_value_list_unpack(_buffer : Void*, value_mask : Uint16T, _aux : XcbConfigureWindowValueListT*) : LibC::Int
  # Connects to the X server.
  fun xcb_connect(displayname : LibC::Char*, screenp : LibC::Int*) : XcbConnectionT
  # Connects to the X server, using an authorization information.
  fun xcb_connect_to_display_with_auth_info(display : LibC::Char*, auth : XcbAuthInfoT*, screen : LibC::Int*) : XcbConnectionT
  # Connects to the X server.
  fun xcb_connect_to_fd(fd : LibC::Int, auth_info : XcbAuthInfoT*) : XcbConnectionT
  # Test whether the connection has shut down due to a fatal error.
  fun xcb_connection_has_error(c : XcbConnectionT) : LibC::Int
  # Returns A cookie
  fun xcb_convert_selection(c : XcbConnectionT, requestor : XcbWindowT, selection : XcbAtomT, target : XcbAtomT, property : XcbAtomT, time : XcbTimestampT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_convert_selection_checked(c : XcbConnectionT, requestor : XcbWindowT, selection : XcbAtomT, target : XcbAtomT, property : XcbAtomT, time : XcbTimestampT) : XcbVoidCookieT
  # copy areas
  fun xcb_copy_area(c : XcbConnectionT, src_drawable : XcbDrawableT, dst_drawable : XcbDrawableT, gc : XcbGcontextT, src_x : Int16T, src_y : Int16T, dst_x : Int16T, dst_y : Int16T, width : Uint16T, height : Uint16T) : XcbVoidCookieT
  # copy areas
  fun xcb_copy_area_checked(c : XcbConnectionT, src_drawable : XcbDrawableT, dst_drawable : XcbDrawableT, gc : XcbGcontextT, src_x : Int16T, src_y : Int16T, dst_x : Int16T, dst_y : Int16T, width : Uint16T, height : Uint16T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_copy_colormap_and_free(c : XcbConnectionT, mid : XcbColormapT, src_cmap : XcbColormapT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_copy_colormap_and_free_checked(c : XcbConnectionT, mid : XcbColormapT, src_cmap : XcbColormapT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_copy_gc(c : XcbConnectionT, src_gc : XcbGcontextT, dst_gc : XcbGcontextT, value_mask : Uint32T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_copy_gc_checked(c : XcbConnectionT, src_gc : XcbGcontextT, dst_gc : XcbGcontextT, value_mask : Uint32T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_copy_plane(c : XcbConnectionT, src_drawable : XcbDrawableT, dst_drawable : XcbDrawableT, gc : XcbGcontextT, src_x : Int16T, src_y : Int16T, dst_x : Int16T, dst_y : Int16T, width : Uint16T, height : Uint16T, bit_plane : Uint32T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_copy_plane_checked(c : XcbConnectionT, src_drawable : XcbDrawableT, dst_drawable : XcbDrawableT, gc : XcbGcontextT, src_x : Int16T, src_y : Int16T, dst_x : Int16T, dst_y : Int16T, width : Uint16T, height : Uint16T, bit_plane : Uint32T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_create_colormap(c : XcbConnectionT, alloc : Uint8T, mid : XcbColormapT, window : XcbWindowT, visual : XcbVisualidT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_create_colormap_checked(c : XcbConnectionT, alloc : Uint8T, mid : XcbColormapT, window : XcbWindowT, visual : XcbVisualidT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_create_cursor(c : XcbConnectionT, cid : XcbCursorT, source : XcbPixmapT, mask : XcbPixmapT, fore_red : Uint16T, fore_green : Uint16T, fore_blue : Uint16T, back_red : Uint16T, back_green : Uint16T, back_blue : Uint16T, x : Uint16T, y : Uint16T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_create_cursor_checked(c : XcbConnectionT, cid : XcbCursorT, source : XcbPixmapT, mask : XcbPixmapT, fore_red : Uint16T, fore_green : Uint16T, fore_blue : Uint16T, back_red : Uint16T, back_green : Uint16T, back_blue : Uint16T, x : Uint16T, y : Uint16T) : XcbVoidCookieT
  # Creates a graphics context
  fun xcb_create_gc(c : XcbConnectionT, cid : XcbGcontextT, drawable : XcbDrawableT, value_mask : Uint32T, value_list : Void*) : XcbVoidCookieT
  # Creates a graphics context
  fun xcb_create_gc_aux(c : XcbConnectionT, cid : XcbGcontextT, drawable : XcbDrawableT, value_mask : Uint32T, value_list : XcbCreateGcValueListT*) : XcbVoidCookieT
  # Creates a graphics context
  fun xcb_create_gc_aux_checked(c : XcbConnectionT, cid : XcbGcontextT, drawable : XcbDrawableT, value_mask : Uint32T, value_list : XcbCreateGcValueListT*) : XcbVoidCookieT
  # Creates a graphics context
  fun xcb_create_gc_checked(c : XcbConnectionT, cid : XcbGcontextT, drawable : XcbDrawableT, value_mask : Uint32T, value_list : Void*) : XcbVoidCookieT
  fun xcb_create_gc_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_create_gc_value_list(r : XcbCreateGcRequestT*) : Void*
  fun xcb_create_gc_value_list_serialize(_buffer : Void**, value_mask : Uint32T, _aux : XcbCreateGcValueListT*) : LibC::Int
  fun xcb_create_gc_value_list_sizeof(_buffer : Void*, value_mask : Uint32T) : LibC::Int
  fun xcb_create_gc_value_list_unpack(_buffer : Void*, value_mask : Uint32T, _aux : XcbCreateGcValueListT*) : LibC::Int
  # create cursor
  fun xcb_create_glyph_cursor(c : XcbConnectionT, cid : XcbCursorT, source_font : XcbFontT, mask_font : XcbFontT, source_char : Uint16T, mask_char : Uint16T, fore_red : Uint16T, fore_green : Uint16T, fore_blue : Uint16T, back_red : Uint16T, back_green : Uint16T, back_blue : Uint16T) : XcbVoidCookieT
  # create cursor
  fun xcb_create_glyph_cursor_checked(c : XcbConnectionT, cid : XcbCursorT, source_font : XcbFontT, mask_font : XcbFontT, source_char : Uint16T, mask_char : Uint16T, fore_red : Uint16T, fore_green : Uint16T, fore_blue : Uint16T, back_red : Uint16T, back_green : Uint16T, back_blue : Uint16T) : XcbVoidCookieT
  # Creates a pixmap
  fun xcb_create_pixmap(c : XcbConnectionT, depth : Uint8T, pid : XcbPixmapT, drawable : XcbDrawableT, width : Uint16T, height : Uint16T) : XcbVoidCookieT
  # Creates a pixmap
  fun xcb_create_pixmap_checked(c : XcbConnectionT, depth : Uint8T, pid : XcbPixmapT, drawable : XcbDrawableT, width : Uint16T, height : Uint16T) : XcbVoidCookieT
  # Create a pixmap from user-supplied bitmap data.
  fun xcb_create_pixmap_from_bitmap_data(display : XcbConnectionT, d : XcbDrawableT, data : Uint8T*, width : Uint32T, height : Uint32T, depth : Uint32T, fg : Uint32T, bg : Uint32T, gcp : XcbGcontextT*) : XcbPixmapT
  # Creates a window
  fun xcb_create_window(c : XcbConnectionT, depth : Uint8T, wid : XcbWindowT, parent : XcbWindowT, x : Int16T, y : Int16T, width : Uint16T, height : Uint16T, border_width : Uint16T, _class : Uint16T, visual : XcbVisualidT, value_mask : Uint32T, value_list : Void*) : XcbVoidCookieT
  # Creates a window
  fun xcb_create_window_aux(c : XcbConnectionT, depth : Uint8T, wid : XcbWindowT, parent : XcbWindowT, x : Int16T, y : Int16T, width : Uint16T, height : Uint16T, border_width : Uint16T, _class : Uint16T, visual : XcbVisualidT, value_mask : Uint32T, value_list : XcbCreateWindowValueListT*) : XcbVoidCookieT
  # Creates a window
  fun xcb_create_window_aux_checked(c : XcbConnectionT, depth : Uint8T, wid : XcbWindowT, parent : XcbWindowT, x : Int16T, y : Int16T, width : Uint16T, height : Uint16T, border_width : Uint16T, _class : Uint16T, visual : XcbVisualidT, value_mask : Uint32T, value_list : XcbCreateWindowValueListT*) : XcbVoidCookieT
  # Creates a window
  fun xcb_create_window_checked(c : XcbConnectionT, depth : Uint8T, wid : XcbWindowT, parent : XcbWindowT, x : Int16T, y : Int16T, width : Uint16T, height : Uint16T, border_width : Uint16T, _class : Uint16T, visual : XcbVisualidT, value_mask : Uint32T, value_list : Void*) : XcbVoidCookieT
  fun xcb_create_window_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_create_window_value_list(r : XcbCreateWindowRequestT*) : Void*
  fun xcb_create_window_value_list_serialize(_buffer : Void**, value_mask : Uint32T, _aux : XcbCreateWindowValueListT*) : LibC::Int
  fun xcb_create_window_value_list_sizeof(_buffer : Void*, value_mask : Uint32T) : LibC::Int
  fun xcb_create_window_value_list_unpack(_buffer : Void*, value_mask : Uint32T, _aux : XcbCreateWindowValueListT*) : LibC::Int
  # Frees the xcb_cursor_context_t.
  fun xcb_cursor_context_free(ctx : XcbCursorContextT)
  # Create a new xcb_cursor_context_t.
  fun xcb_cursor_context_new(conn : XcbConnectionT, screen : XcbScreenT*, ctx : XcbCursorContextT*) : LibC::Int
  # Return the iterator pointing to the last element
  fun xcb_cursor_end(i : XcbCursorIteratorT) : XcbGenericIteratorT
  # Loads the specified cursor, either from the cursor theme or by falling back to the X11 "cursor" font.
  fun xcb_cursor_load_cursor(ctx : XcbCursorContextT, name : LibC::Char*) : XcbCursorT
  # Get the next element of the iterator
  fun xcb_cursor_next(i : XcbCursorIteratorT*)
  # Returns A cookie
  fun xcb_delete_property(c : XcbConnectionT, window : XcbWindowT, property : XcbAtomT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_delete_property_checked(c : XcbConnectionT, window : XcbWindowT, property : XcbAtomT) : XcbVoidCookieT
  # Return the iterator pointing to the last element
  fun xcb_depth_end(i : XcbDepthIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_depth_next(i : XcbDepthIteratorT*)
  fun xcb_depth_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_depth_visuals(r : XcbDepthT*) : XcbVisualtypeT*
  fun xcb_depth_visuals_iterator(r : XcbDepthT*) : XcbVisualtypeIteratorT
  fun xcb_depth_visuals_length(r : XcbDepthT*) : LibC::Int
  # Returns A cookie
  fun xcb_destroy_subwindows(c : XcbConnectionT, window : XcbWindowT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_destroy_subwindows_checked(c : XcbConnectionT, window : XcbWindowT) : XcbVoidCookieT
  # Destroys a window
  fun xcb_destroy_window(c : XcbConnectionT, window : XcbWindowT) : XcbVoidCookieT
  # Destroys a window
  fun xcb_destroy_window_checked(c : XcbConnectionT, window : XcbWindowT) : XcbVoidCookieT
  # Discards the reply for a request.
  fun xcb_discard_reply(c : XcbConnectionT, sequence : LibC::UInt)
  # Discards the reply for a request, given by a 64bit sequence number
  fun xcb_discard_reply64(c : XcbConnectionT, sequence : Uint64T)
  # Closes the connection.
  fun xcb_disconnect(c : XcbConnectionT)
  # Return the iterator pointing to the last element
  fun xcb_drawable_end(i : XcbDrawableIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_drawable_next(i : XcbDrawableIteratorT*)
  # Convert an event error type to a label.
  fun xcb_event_get_error_label(type : Uint8T) : LibC::Char*
  # Convert an event response type to a label.
  fun xcb_event_get_label(type : Uint8T) : LibC::Char*
  # Convert an event request type to a label.
  fun xcb_event_get_request_label(type : Uint8T) : LibC::Char*
  fun xcb_ewmh_append_wm_icon(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, width : Uint32T, height : Uint32T, img_len : Uint32T, img : Uint32T*) : XcbVoidCookieT
  fun xcb_ewmh_append_wm_icon_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, width : Uint32T, height : Uint32T, img_len : Uint32T, img : Uint32T*) : XcbVoidCookieT
  fun xcb_ewmh_connection_wipe(ewmh : XcbEwmhConnectionT*)
  # Send GetProperty request to get _NET_ACTIVE_WINDOW root window property
  fun xcb_ewmh_get_active_window(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  # Get the list of client windows from a GetProperty _NET_ACTIVE_WINDOW reply
  fun xcb_ewmh_get_active_window_from_reply(active_window : XcbWindowT*, r : XcbGetPropertyReplyT*) : Uint8T
  # Get reply from the GetProperty _NET_ACTIVE_WINDOW cookie
  fun xcb_ewmh_get_active_window_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, active_window : XcbWindowT*, e : XcbGenericErrorT**) : Uint8T
  # Send GetProperty request to get _NET_ACTIVE_WINDOW root window property
  fun xcb_ewmh_get_active_window_unchecked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  # Get a list of atoms from a given GetProperty reply whose type is ATOM
  fun xcb_ewmh_get_atoms_from_reply(atoms : XcbEwmhGetAtomsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  # Get a list of atoms from the reply of a GetProperty request whose type is ATOM
  fun xcb_ewmh_get_atoms_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, atoms : XcbEwmhGetAtomsReplyT*, e : XcbGenericErrorT**) : Uint8T
  # Wipe the Atoms list reply
  fun xcb_ewmh_get_atoms_reply_wipe(data : XcbEwmhGetAtomsReplyT*)
  fun xcb_ewmh_get_cardinal_from_reply(cardinal : Uint32T*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_cardinal_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, cardinal : Uint32T*, e : XcbGenericErrorT**) : Uint8T
  # Send GetProperty request to get _NET_CLIENT_LIST root window property
  fun xcb_ewmh_get_client_list(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  # Get the list of client windows from a GetProperty _NET_CLIENT_LIST reply
  fun xcb_ewmh_get_client_list_from_reply(clients : XcbEwmhGetWindowsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  # Get reply from the GetProperty _NET_CLIENT_LIST cookie
  fun xcb_ewmh_get_client_list_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, clients : XcbEwmhGetWindowsReplyT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_client_list_stacking(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  # Get the list of client windows from a GetProperty _NET_CLIENT_LIST_STACKING reply
  fun xcb_ewmh_get_client_list_stacking_from_reply(clients : XcbEwmhGetWindowsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  # Get reply from the GetProperty _NET_CLIENT_LIST_STACKING cookie
  fun xcb_ewmh_get_client_list_stacking_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, clients : XcbEwmhGetWindowsReplyT*, e : XcbGenericErrorT**) : Uint8T
  # Send GetProperty request to get _NET_CLIENT_LIST_STACKING root window property
  fun xcb_ewmh_get_client_list_stacking_unchecked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  # Send GetProperty request to get _NET_CLIENT_LIST root window property
  fun xcb_ewmh_get_client_list_unchecked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_current_desktop(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  # Get the desktop geometry from a GetProperty _NET_CURRENT_DESKTOP reply
  fun xcb_ewmh_get_current_desktop_from_reply(current_desktop : Uint32T*, r : XcbGetPropertyReplyT*) : Uint8T
  # Get reply from the GetProperty _NET_CURRENT_DESKTOP cookie
  fun xcb_ewmh_get_current_desktop_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, current_desktop : Uint32T*, e : XcbGenericErrorT**) : Uint8T
  # Send GetProperty request to get _NET_CURRENT_DESKTOP root window property
  fun xcb_ewmh_get_current_desktop_unchecked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_desktop_geometry(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  # Get the desktop geometry from a GetProperty _NET_DESKTOP_GEOMETRY reply
  fun xcb_ewmh_get_desktop_geometry_from_reply(width : Uint32T*, height : Uint32T*, r : XcbGetPropertyReplyT*) : Uint8T
  # Get reply from the GetProperty _NET_DESKTOP_GEOMETRY cookie
  fun xcb_ewmh_get_desktop_geometry_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, width : Uint32T*, height : Uint32T*, e : XcbGenericErrorT**) : Uint8T
  # Send GetProperty request to get _NET_DESKTOP_GEOMETRY root window property
  fun xcb_ewmh_get_desktop_geometry_unchecked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_desktop_layout(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_desktop_layout_from_reply(desktop_layouts : XcbEwmhGetDesktopLayoutReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_desktop_layout_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, desktop_layouts : XcbEwmhGetDesktopLayoutReplyT*, e : XcbGenericErrorT**) : Uint8T
  # Send GetProperty request to get _NET_DESKTOP_LAYOUT root window property
  fun xcb_ewmh_get_desktop_layout_unchecked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_desktop_names(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  # Get the desktop geometry from a GetProperty _NET_DESKTOP_NAMES reply
  fun xcb_ewmh_get_desktop_names_from_reply(ewmh : XcbEwmhConnectionT*, names : XcbEwmhGetUtf8StringsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  # Get reply from the GetProperty _NET_DESKTOP_NAMES cookie
  fun xcb_ewmh_get_desktop_names_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, names : XcbEwmhGetUtf8StringsReplyT*, e : XcbGenericErrorT**) : Uint8T
  # Send GetProperty request to get _NET_DESKTOP_NAMES root window property
  fun xcb_ewmh_get_desktop_names_unchecked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_desktop_viewport(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  # Get the desktop geometry from a GetProperty _NET_DESKTOP_VIEWPORT reply
  fun xcb_ewmh_get_desktop_viewport_from_reply(vp : XcbEwmhGetDesktopViewportReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  # Get reply from the GetProperty _NET_DESKTOP_VIEWPORT cookie
  fun xcb_ewmh_get_desktop_viewport_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, vp : XcbEwmhGetDesktopViewportReplyT*, e : XcbGenericErrorT**) : Uint8T
  # Wipe the desktop viewports list reply
  fun xcb_ewmh_get_desktop_viewport_reply_wipe(r : XcbEwmhGetDesktopViewportReplyT*)
  # Send GetProperty request to get _NET_DESKTOP_VIEWPORT root window property
  fun xcb_ewmh_get_desktop_viewport_unchecked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_frame_extents(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_frame_extents_from_reply(frame_extents : XcbEwmhGetExtentsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_frame_extents_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, frame_extents : XcbEwmhGetExtentsReplyT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_frame_extents_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_number_of_desktops(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  # Get the list of client windows from a GetProperty _NET_NUMBER_OF_DESKTOPS reply
  fun xcb_ewmh_get_number_of_desktops_from_reply(number_of_desktops : Uint32T*, r : XcbGetPropertyReplyT*) : Uint8T
  # Get reply from the GetProperty _NET_NUMBER_OF_DESKTOPS cookie
  fun xcb_ewmh_get_number_of_desktops_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, number_of_desktops : Uint32T*, e : XcbGenericErrorT**) : Uint8T
  # Send GetProperty request to get _NET_NUMBER_OF_DESKTOPS root window property
  fun xcb_ewmh_get_number_of_desktops_unchecked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_showing_desktop(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_showing_desktop_from_reply(desktop : Uint32T*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_showing_desktop_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, desktop : Uint32T*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_showing_desktop_unchecked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_supported(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  # Get the list of supported atoms
  fun xcb_ewmh_get_supported_from_reply(supported : XcbEwmhGetAtomsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  # Get reply from the GetProperty _NET_SUPPORTED cookie
  fun xcb_ewmh_get_supported_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, supported : XcbEwmhGetAtomsReplyT*, e : XcbGenericErrorT**) : Uint8T
  # Send GetProperty request to get _NET_SUPPORTED root window property
  fun xcb_ewmh_get_supported_unchecked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_supporting_wm_check(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  # Get the list of client windows from a GetProperty _NET_SUPPORTING_WM_CHECK reply
  fun xcb_ewmh_get_supporting_wm_check_from_reply(window : XcbWindowT*, r : XcbGetPropertyReplyT*) : Uint8T
  # Get reply from the GetProperty _NET_SUPPORTING_WM_CHECK cookie
  fun xcb_ewmh_get_supporting_wm_check_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, window : XcbWindowT*, e : XcbGenericErrorT**) : Uint8T
  # Send GetProperty request to get _NET_SUPPORTING_WM_CHECK root window property
  fun xcb_ewmh_get_supporting_wm_check_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_utf8_strings_from_reply(ewmh : XcbEwmhConnectionT*, data : XcbEwmhGetUtf8StringsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_utf8_strings_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, data : XcbEwmhGetUtf8StringsReplyT*, e : XcbGenericErrorT**) : Uint8T
  # Wipe the UTF-8 strings list reply
  fun xcb_ewmh_get_utf8_strings_reply_wipe(data : XcbEwmhGetUtf8StringsReplyT*)
  fun xcb_ewmh_get_virtual_roots(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  # Get the desktop geometry from a GetProperty _NET_WORKAREA reply
  fun xcb_ewmh_get_virtual_roots_from_reply(virtual_roots : XcbEwmhGetWindowsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  # Get reply from the GetProperty _NET_VIRTUAL_ROOTS cookie
  fun xcb_ewmh_get_virtual_roots_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, virtual_roots : XcbEwmhGetWindowsReplyT*, e : XcbGenericErrorT**) : Uint8T
  # Send GetProperty request to get _NET_VIRTUAL_ROOTS root window property
  fun xcb_ewmh_get_virtual_roots_unchecked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_window_from_reply(window : XcbWindowT*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_window_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, window : XcbWindowT*, e : XcbGenericErrorT**) : Uint8T
  # Get a list of atoms from a given GetProperty reply whose type is WINDOW
  fun xcb_ewmh_get_windows_from_reply(atoms : XcbEwmhGetWindowsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  # Get a list of atoms from the reply of a GetProperty request whose type is WINDOW
  fun xcb_ewmh_get_windows_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, atoms : XcbEwmhGetWindowsReplyT*, e : XcbGenericErrorT**) : Uint8T
  # Wipe the windows list reply
  fun xcb_ewmh_get_windows_reply_wipe(data : XcbEwmhGetWindowsReplyT*)
  fun xcb_ewmh_get_wm_allowed_actions(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_allowed_actions_from_reply(wtypes : XcbEwmhGetAtomsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_allowed_actions_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, name : XcbEwmhGetAtomsReplyT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_allowed_actions_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_cm_owner(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetSelectionOwnerCookieT
  fun xcb_ewmh_get_wm_cm_owner_from_reply(owner : XcbWindowT*, r : XcbGetSelectionOwnerReplyT*) : Uint8T
  # Get reply from the GetProperty _NET_CLIENT_LIST cookie
  fun xcb_ewmh_get_wm_cm_owner_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetSelectionOwnerCookieT, owner : XcbWindowT*, e : XcbGenericErrorT**) : Uint8T
  # Send GetSelectOwner request to get the owner of _NET_WM_CM_Sn root window property
  fun xcb_ewmh_get_wm_cm_owner_unchecked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetSelectionOwnerCookieT
  fun xcb_ewmh_get_wm_desktop(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_desktop_from_reply(desktop : Uint32T*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_desktop_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, desktop : Uint32T*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_desktop_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_fullscreen_monitors(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_fullscreen_monitors_from_reply(monitors : XcbEwmhGetWmFullscreenMonitorsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_fullscreen_monitors_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, monitors : XcbEwmhGetWmFullscreenMonitorsReplyT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_fullscreen_monitors_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_handled_icons(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_handled_icons_from_reply(handled_icons : Uint32T*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_handled_icons_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, handled_icons : Uint32T*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_handled_icons_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_icon(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_icon_from_reply(wm_icon : XcbEwmhGetWmIconReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_icon_geometry(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_icon_geometry_from_reply(icons : XcbEwmhGeometryT*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_icon_geometry_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, icons : XcbEwmhGeometryT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_icon_geometry_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_icon_iterator(wm_icon : XcbEwmhGetWmIconReplyT*) : XcbEwmhWmIconIteratorT
  fun xcb_ewmh_get_wm_icon_length(wm_icon : XcbEwmhGetWmIconReplyT*) : LibC::UInt
  fun xcb_ewmh_get_wm_icon_name(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_icon_name_from_reply(ewmh : XcbEwmhConnectionT*, data : XcbEwmhGetUtf8StringsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_icon_name_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, data : XcbEwmhGetUtf8StringsReplyT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_icon_name_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_icon_next(iterator : XcbEwmhWmIconIteratorT*)
  fun xcb_ewmh_get_wm_icon_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, wm_icon : XcbEwmhGetWmIconReplyT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_icon_reply_wipe(wm_icon : XcbEwmhGetWmIconReplyT*)
  fun xcb_ewmh_get_wm_icon_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_name(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_name_from_reply(ewmh : XcbEwmhConnectionT*, data : XcbEwmhGetUtf8StringsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_name_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, data : XcbEwmhGetUtf8StringsReplyT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_name_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_pid(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_pid_from_reply(pid : Uint32T*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_pid_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, pid : Uint32T*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_pid_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_state(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_state_from_reply(wtypes : XcbEwmhGetAtomsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_state_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, name : XcbEwmhGetAtomsReplyT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_state_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_strut(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_strut_from_reply(struts : XcbEwmhGetExtentsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_strut_partial(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_strut_partial_from_reply(struts : XcbEwmhWmStrutPartialT*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_strut_partial_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, struts : XcbEwmhWmStrutPartialT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_strut_partial_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_strut_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, struts : XcbEwmhGetExtentsReplyT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_strut_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_sync_request_counter(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_sync_request_counter_from_reply(counter : Uint64T*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_sync_request_counter_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, counter : Uint64T*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_sync_request_counter_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_user_time(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_user_time_from_reply(xtime : Uint32T*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_user_time_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, xtime : Uint32T*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_user_time_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_user_time_window(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_user_time_window_from_reply(xtime : Uint32T*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_user_time_window_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, xtime : Uint32T*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_user_time_window_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_visible_icon_name(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_visible_icon_name_from_reply(ewmh : XcbEwmhConnectionT*, data : XcbEwmhGetUtf8StringsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_visible_icon_name_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, data : XcbEwmhGetUtf8StringsReplyT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_visible_icon_name_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_visible_name(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_visible_name_from_reply(ewmh : XcbEwmhConnectionT*, data : XcbEwmhGetUtf8StringsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_visible_name_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, data : XcbEwmhGetUtf8StringsReplyT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_visible_name_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_window_type(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_wm_window_type_from_reply(wtypes : XcbEwmhGetAtomsReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  fun xcb_ewmh_get_wm_window_type_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, name : XcbEwmhGetAtomsReplyT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_ewmh_get_wm_window_type_unchecked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_ewmh_get_workarea(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  # Get the desktop geometry from a GetProperty _NET_WORKAREA reply
  fun xcb_ewmh_get_workarea_from_reply(wa : XcbEwmhGetWorkareaReplyT*, r : XcbGetPropertyReplyT*) : Uint8T
  # Get reply from the GetProperty _NET_WORKAREA cookie
  fun xcb_ewmh_get_workarea_reply(ewmh : XcbEwmhConnectionT*, cookie : XcbGetPropertyCookieT, wa : XcbEwmhGetWorkareaReplyT*, e : XcbGenericErrorT**) : Uint8T
  # Wipe the workarea list reply
  fun xcb_ewmh_get_workarea_reply_wipe(r : XcbEwmhGetWorkareaReplyT*)
  # Send GetProperty request to get _NET_WORKAREA root window property
  fun xcb_ewmh_get_workarea_unchecked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int) : XcbGetPropertyCookieT
  # Send InternAtom requests for the EWMH atoms and its required atoms
  fun xcb_ewmh_init_atoms(c : XcbConnectionT, ewmh : XcbEwmhConnectionT*) : XcbInternAtomCookieT*
  # Process the replies to the screen initialisation requests previously sent
  fun xcb_ewmh_init_atoms_replies(ewmh : XcbEwmhConnectionT*, ewmh_cookies : XcbInternAtomCookieT*, e : XcbGenericErrorT**) : Uint8T
  # Send ClientMessage requesting to change the _NET_ACTIVE_WINDOW
  fun xcb_ewmh_request_change_active_window(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, window_to_activate : XcbWindowT, source_indication : XcbEwmhClientSourceTypeT, timestamp : XcbTimestampT, current_active_window : XcbWindowT) : XcbVoidCookieT
  # Send ClientMessage requesting to change the _NET_CURRENT_DESKTOP
  fun xcb_ewmh_request_change_current_desktop(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, new_desktop : Uint32T, timestamp : XcbTimestampT) : XcbVoidCookieT
  # Send ClientMessage requesting to change the _NET_DESKTOP_GEOMETRY
  fun xcb_ewmh_request_change_desktop_geometry(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, new_width : Uint32T, new_height : Uint32T) : XcbVoidCookieT
  # Send ClientMessage requesting to change the _NET_DESKTOP_VIEWPORT
  fun xcb_ewmh_request_change_desktop_viewport(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, x : Uint32T, y : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_request_change_number_of_desktops(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, new_number_of_desktops : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_request_change_showing_desktop(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, enter : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_request_change_wm_desktop(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, client_window : XcbWindowT, new_desktop : Uint32T, source_indication : XcbEwmhClientSourceTypeT) : XcbVoidCookieT
  fun xcb_ewmh_request_change_wm_fullscreen_monitors(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, window : XcbWindowT, top : Uint32T, bottom : Uint32T, left : Uint32T, right : Uint32T, source_indication : XcbEwmhClientSourceTypeT) : XcbVoidCookieT
  fun xcb_ewmh_request_change_wm_state(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, client_window : XcbWindowT, action : XcbEwmhWmStateActionT, first_property : XcbAtomT, second_property : XcbAtomT, source_indication : XcbEwmhClientSourceTypeT) : XcbVoidCookieT
  fun xcb_ewmh_request_close_window(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, window_to_close : XcbWindowT, timestamp : XcbTimestampT, source_indication : XcbEwmhClientSourceTypeT) : XcbVoidCookieT
  fun xcb_ewmh_request_frame_extents(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, client_window : XcbWindowT) : XcbVoidCookieT
  fun xcb_ewmh_request_moveresize_window(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, moveresize_window : XcbWindowT, gravity : XcbGravityT, source_indication : XcbEwmhClientSourceTypeT, flags : XcbEwmhMoveresizeWindowOptFlagsT, x : Uint32T, y : Uint32T, width : Uint32T, height : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_request_restack_window(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, window_to_restack : XcbWindowT, sibling_window : XcbWindowT, detail : XcbStackModeT) : XcbVoidCookieT
  fun xcb_ewmh_request_wm_moveresize(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, moveresize_window : XcbWindowT, x_root : Uint32T, y_root : Uint32T, direction : XcbEwmhMoveresizeDirectionT, button : XcbButtonIndexT, source_indication : XcbEwmhClientSourceTypeT) : XcbVoidCookieT
  # Send a SendEvent request containing a ClientMessage event
  fun xcb_ewmh_send_client_message(c : XcbConnectionT, window : XcbWindowT, dest : XcbWindowT, atom : XcbAtomT, data_len : Uint32T, data : Uint32T*) : XcbVoidCookieT
  fun xcb_ewmh_send_wm_ping(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, timestamp : XcbTimestampT) : XcbVoidCookieT
  fun xcb_ewmh_send_wm_sync_request(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, wm_protocols_atom : XcbAtomT, wm_sync_request_atom : XcbAtomT, timestamp : XcbTimestampT, counter : Uint64T) : XcbVoidCookieT
  # Send a ChangeProperty request for _NET_ACTIVE_WINDOW
  fun xcb_ewmh_set_active_window(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, new_active_window : XcbWindowT) : XcbVoidCookieT
  fun xcb_ewmh_set_active_window_checked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, new_active_window : XcbWindowT) : XcbVoidCookieT
  # Send a ChangeProperty request for _NET_CLIENT_LIST
  fun xcb_ewmh_set_client_list(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, list_len : Uint32T, list : XcbWindowT*) : XcbVoidCookieT
  fun xcb_ewmh_set_client_list_checked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, list_len : Uint32T, list : XcbWindowT*) : XcbVoidCookieT
  # Send a ChangeProperty request for _NET_CLIENT_LIST_STACKING
  fun xcb_ewmh_set_client_list_stacking(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, list_len : Uint32T, list : XcbWindowT*) : XcbVoidCookieT
  fun xcb_ewmh_set_client_list_stacking_checked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, list_len : Uint32T, list : XcbWindowT*) : XcbVoidCookieT
  # Send a ChangeProperty request for _NET_CURRENT_DESKTOP
  fun xcb_ewmh_set_current_desktop(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, new_current_desktop : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_current_desktop_checked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, new_current_desktop : Uint32T) : XcbVoidCookieT
  # Send a ChangeProperty request for _NET_DESKTOP_GEOMETRY
  fun xcb_ewmh_set_desktop_geometry(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, new_width : Uint32T, new_height : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_desktop_geometry_checked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, new_width : Uint32T, new_height : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_desktop_layout(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, orientation : XcbEwmhDesktopLayoutOrientationT, columns : Uint32T, rows : Uint32T, starting_corner : XcbEwmhDesktopLayoutStartingCornerT) : XcbVoidCookieT
  fun xcb_ewmh_set_desktop_layout_checked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, orientation : XcbEwmhDesktopLayoutOrientationT, columns : Uint32T, rows : Uint32T, starting_corner : XcbEwmhDesktopLayoutStartingCornerT) : XcbVoidCookieT
  # Send a ChangeProperty request for _NET_DESKTOP_NAMES
  fun xcb_ewmh_set_desktop_names(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, strings_len : Uint32T, strings : LibC::Char*) : XcbVoidCookieT
  fun xcb_ewmh_set_desktop_names_checked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, strings_len : Uint32T, strings : LibC::Char*) : XcbVoidCookieT
  # Send a ChangeProperty request for _NET_DESKTOP_VIEWPORT
  fun xcb_ewmh_set_desktop_viewport(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, list_len : Uint32T, list : XcbEwmhCoordinatesT*) : XcbVoidCookieT
  fun xcb_ewmh_set_desktop_viewport_checked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, list_len : Uint32T, list : XcbEwmhCoordinatesT*) : XcbVoidCookieT
  fun xcb_ewmh_set_frame_extents(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, left : Uint32T, right : Uint32T, top : Uint32T, bottom : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_frame_extents_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, left : Uint32T, right : Uint32T, top : Uint32T, bottom : Uint32T) : XcbVoidCookieT
  # Send a ChangeProperty request for _NET_NUMBER_OF_DESKTOPS
  fun xcb_ewmh_set_number_of_desktops(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, number_of_desktops : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_number_of_desktops_checked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, number_of_desktops : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_showing_desktop(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, desktop : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_showing_desktop_checked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, desktop : Uint32T) : XcbVoidCookieT
  # Send a ChangeProperty request for _NET_SUPPORTED
  fun xcb_ewmh_set_supported(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, list_len : Uint32T, list : XcbAtomT*) : XcbVoidCookieT
  fun xcb_ewmh_set_supported_checked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, list_len : Uint32T, list : XcbAtomT*) : XcbVoidCookieT
  # Send a ChangeProperty request for _NET_SUPPORTING_WM_CHECK
  fun xcb_ewmh_set_supporting_wm_check(ewmh : XcbEwmhConnectionT*, parent_window : XcbWindowT, child_window : XcbWindowT) : XcbVoidCookieT
  fun xcb_ewmh_set_supporting_wm_check_checked(ewmh : XcbEwmhConnectionT*, parent_window : XcbWindowT, child_window : XcbWindowT) : XcbVoidCookieT
  # Send a ChangeProperty request for _NET_VIRTUAL_ROOTS
  fun xcb_ewmh_set_virtual_roots(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, list_len : Uint32T, list : XcbWindowT*) : XcbVoidCookieT
  fun xcb_ewmh_set_virtual_roots_checked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, list_len : Uint32T, list : XcbWindowT*) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_allowed_actions(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, list_len : Uint32T, list : XcbAtomT*) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_allowed_actions_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, list_len : Uint32T, list : XcbAtomT*) : XcbVoidCookieT
  # Set _NET_WM_CM_Sn ownership to the given window
  fun xcb_ewmh_set_wm_cm_owner(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, owner : XcbWindowT, timestamp : XcbTimestampT, selection_data1 : Uint32T, selection_data2 : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_cm_owner_checked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, owner : XcbWindowT, timestamp : XcbTimestampT, selection_data1 : Uint32T, selection_data2 : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_desktop(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, desktop : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_desktop_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, desktop : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_fullscreen_monitors(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, top : Uint32T, bottom : Uint32T, left : Uint32T, right : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_fullscreen_monitors_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, top : Uint32T, bottom : Uint32T, left : Uint32T, right : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_handled_icons(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, handled_icons : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_handled_icons_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, handled_icons : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_icon(ewmh : XcbEwmhConnectionT*, mode : Uint8T, window : XcbWindowT, data_len : Uint32T, data : Uint32T*) : XcbVoidCookieT
  # Send ChangeProperty request to set _NET_WM_ICON window property. The given data is considered to be already prepared, namely that it is an array such as: WIDTH1, HEIGHT1, IMG1, WIDTH2, HEIGHT2, IMG2.
  fun xcb_ewmh_set_wm_icon_checked(ewmh : XcbEwmhConnectionT*, mode : Uint8T, window : XcbWindowT, data_len : Uint32T, data : Uint32T*) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_icon_geometry(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, left : Uint32T, right : Uint32T, top : Uint32T, bottom : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_icon_geometry_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, left : Uint32T, right : Uint32T, top : Uint32T, bottom : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_icon_name(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, strings_len : Uint32T, strings : LibC::Char*) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_icon_name_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, strings_len : Uint32T, strings : LibC::Char*) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_name(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, strings_len : Uint32T, strings : LibC::Char*) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_name_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, strings_len : Uint32T, strings : LibC::Char*) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_pid(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, pid : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_pid_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, pid : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_state(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, list_len : Uint32T, list : XcbAtomT*) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_state_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, list_len : Uint32T, list : XcbAtomT*) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_strut(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, left : Uint32T, right : Uint32T, top : Uint32T, bottom : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_strut_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, left : Uint32T, right : Uint32T, top : Uint32T, bottom : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_strut_partial(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, wm_strut : XcbEwmhWmStrutPartialT) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_strut_partial_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, wm_strut : XcbEwmhWmStrutPartialT) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_sync_request_counter(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, wm_sync_request_counter_atom : XcbAtomT, low : Uint32T, high : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_sync_request_counter_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, wm_sync_request_counter_atom : XcbAtomT, low : Uint32T, high : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_user_time(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, xtime : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_user_time_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, pid : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_user_time_window(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, xtime : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_user_time_window_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, pid : Uint32T) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_visible_icon_name(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, strings_len : Uint32T, strings : LibC::Char*) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_visible_icon_name_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, strings_len : Uint32T, strings : LibC::Char*) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_visible_name(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, strings_len : Uint32T, strings : LibC::Char*) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_visible_name_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, strings_len : Uint32T, strings : LibC::Char*) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_window_type(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, list_len : Uint32T, list : XcbAtomT*) : XcbVoidCookieT
  fun xcb_ewmh_set_wm_window_type_checked(ewmh : XcbEwmhConnectionT*, window : XcbWindowT, list_len : Uint32T, list : XcbAtomT*) : XcbVoidCookieT
  # Send a ChangeProperty request for _NET_WORKAREA
  fun xcb_ewmh_set_workarea(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, list_len : Uint32T, list : XcbEwmhGeometryT*) : XcbVoidCookieT
  fun xcb_ewmh_set_workarea_checked(ewmh : XcbEwmhConnectionT*, screen_nbr : LibC::Int, list_len : Uint32T, list : XcbEwmhGeometryT*) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_fill_poly(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, shape : Uint8T, coordinate_mode : Uint8T, points_len : Uint32T, points : XcbPointT*) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_fill_poly_checked(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, shape : Uint8T, coordinate_mode : Uint8T, points_len : Uint32T, points : XcbPointT*) : XcbVoidCookieT
  fun xcb_fill_poly_points(r : XcbFillPolyRequestT*) : XcbPointT*
  fun xcb_fill_poly_points_iterator(r : XcbFillPolyRequestT*) : XcbPointIteratorT
  fun xcb_fill_poly_points_length(r : XcbFillPolyRequestT*) : LibC::Int
  fun xcb_fill_poly_sizeof(_buffer : Void*, points_len : Uint32T) : LibC::Int
  # Forces any buffered output to be written to the server.
  fun xcb_flush(c : XcbConnectionT) : LibC::Int
  # Return the iterator pointing to the last element
  fun xcb_font_end(i : XcbFontIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_font_next(i : XcbFontIteratorT*)
  # Return the iterator pointing to the last element
  fun xcb_fontable_end(i : XcbFontableIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_fontable_next(i : XcbFontableIteratorT*)
  # Return the iterator pointing to the last element
  fun xcb_fontprop_end(i : XcbFontpropIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_fontprop_next(i : XcbFontpropIteratorT*)
  # Returns A cookie
  fun xcb_force_screen_saver(c : XcbConnectionT, mode : Uint8T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_force_screen_saver_checked(c : XcbConnectionT, mode : Uint8T) : XcbVoidCookieT
  # Return the iterator pointing to the last element
  fun xcb_format_end(i : XcbFormatIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_format_next(i : XcbFormatIteratorT*)
  # Returns A cookie
  fun xcb_free_colormap(c : XcbConnectionT, cmap : XcbColormapT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_free_colormap_checked(c : XcbConnectionT, cmap : XcbColormapT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_free_colors(c : XcbConnectionT, cmap : XcbColormapT, plane_mask : Uint32T, pixels_len : Uint32T, pixels : Uint32T*) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_free_colors_checked(c : XcbConnectionT, cmap : XcbColormapT, plane_mask : Uint32T, pixels_len : Uint32T, pixels : Uint32T*) : XcbVoidCookieT
  fun xcb_free_colors_pixels(r : XcbFreeColorsRequestT*) : Uint32T*
  fun xcb_free_colors_pixels_end(r : XcbFreeColorsRequestT*) : XcbGenericIteratorT
  fun xcb_free_colors_pixels_length(r : XcbFreeColorsRequestT*) : LibC::Int
  fun xcb_free_colors_sizeof(_buffer : Void*, pixels_len : Uint32T) : LibC::Int
  # Deletes a cursor
  fun xcb_free_cursor(c : XcbConnectionT, cursor : XcbCursorT) : XcbVoidCookieT
  # Deletes a cursor
  fun xcb_free_cursor_checked(c : XcbConnectionT, cursor : XcbCursorT) : XcbVoidCookieT
  # Destroys a graphics context
  fun xcb_free_gc(c : XcbConnectionT, gc : XcbGcontextT) : XcbVoidCookieT
  # Destroys a graphics context
  fun xcb_free_gc_checked(c : XcbConnectionT, gc : XcbGcontextT) : XcbVoidCookieT
  # Destroys a pixmap
  fun xcb_free_pixmap(c : XcbConnectionT, pixmap : XcbPixmapT) : XcbVoidCookieT
  # Destroys a pixmap
  fun xcb_free_pixmap_checked(c : XcbConnectionT, pixmap : XcbPixmapT) : XcbVoidCookieT
  # Return the iterator pointing to the last element
  fun xcb_gcontext_end(i : XcbGcontextIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_gcontext_next(i : XcbGcontextIteratorT*)
  # Allocates an XID for a new object.
  fun xcb_generate_id(c : XcbConnectionT) : Uint32T
  # Returns A cookie
  fun xcb_get_atom_name(c : XcbConnectionT, atom : XcbAtomT) : XcbGetAtomNameCookieT
  fun xcb_get_atom_name_name(r : XcbGetAtomNameReplyT*) : LibC::Char*
  fun xcb_get_atom_name_name_end(r : XcbGetAtomNameReplyT*) : XcbGenericIteratorT
  fun xcb_get_atom_name_name_length(r : XcbGetAtomNameReplyT*) : LibC::Int
  # Return the reply
  fun xcb_get_atom_name_reply(c : XcbConnectionT, cookie : XcbGetAtomNameCookieT, e : XcbGenericErrorT**) : XcbGetAtomNameReplyT*
  fun xcb_get_atom_name_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_get_atom_name_unchecked(c : XcbConnectionT, atom : XcbAtomT) : XcbGetAtomNameCookieT
  # Caches reply information from QueryExtension requests.
  fun xcb_get_extension_data(c : XcbConnectionT, ext : XcbExtensionT*) : XcbQueryExtensionReplyT*
  # Access the file descriptor of the connection.
  fun xcb_get_file_descriptor(c : XcbConnectionT) : LibC::Int
  # Returns A cookie
  fun xcb_get_font_path(c : XcbConnectionT) : XcbGetFontPathCookieT
  fun xcb_get_font_path_path_iterator(r : XcbGetFontPathReplyT*) : XcbStrIteratorT
  fun xcb_get_font_path_path_length(r : XcbGetFontPathReplyT*) : LibC::Int
  # Return the reply
  fun xcb_get_font_path_reply(c : XcbConnectionT, cookie : XcbGetFontPathCookieT, e : XcbGenericErrorT**) : XcbGetFontPathReplyT*
  fun xcb_get_font_path_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_get_font_path_unchecked(c : XcbConnectionT) : XcbGetFontPathCookieT
  # Get current window geometry
  fun xcb_get_geometry(c : XcbConnectionT, drawable : XcbDrawableT) : XcbGetGeometryCookieT
  # Return the reply
  fun xcb_get_geometry_reply(c : XcbConnectionT, cookie : XcbGetGeometryCookieT, e : XcbGenericErrorT**) : XcbGetGeometryReplyT*
  # Get current window geometry
  fun xcb_get_geometry_unchecked(c : XcbConnectionT, drawable : XcbDrawableT) : XcbGetGeometryCookieT
  # Returns A cookie
  fun xcb_get_image(c : XcbConnectionT, format : Uint8T, drawable : XcbDrawableT, x : Int16T, y : Int16T, width : Uint16T, height : Uint16T, plane_mask : Uint32T) : XcbGetImageCookieT
  fun xcb_get_image_data(r : XcbGetImageReplyT*) : Uint8T*
  fun xcb_get_image_data_end(r : XcbGetImageReplyT*) : XcbGenericIteratorT
  fun xcb_get_image_data_length(r : XcbGetImageReplyT*) : LibC::Int
  # Return the reply
  fun xcb_get_image_reply(c : XcbConnectionT, cookie : XcbGetImageCookieT, e : XcbGenericErrorT**) : XcbGetImageReplyT*
  fun xcb_get_image_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_get_image_unchecked(c : XcbConnectionT, format : Uint8T, drawable : XcbDrawableT, x : Int16T, y : Int16T, width : Uint16T, height : Uint16T, plane_mask : Uint32T) : XcbGetImageCookieT
  # Returns A cookie
  fun xcb_get_input_focus(c : XcbConnectionT) : XcbGetInputFocusCookieT
  # Return the reply
  fun xcb_get_input_focus_reply(c : XcbConnectionT, cookie : XcbGetInputFocusCookieT, e : XcbGenericErrorT**) : XcbGetInputFocusReplyT*
  # Returns A cookie
  fun xcb_get_input_focus_unchecked(c : XcbConnectionT) : XcbGetInputFocusCookieT
  # Returns A cookie
  fun xcb_get_keyboard_control(c : XcbConnectionT) : XcbGetKeyboardControlCookieT
  # Return the reply
  fun xcb_get_keyboard_control_reply(c : XcbConnectionT, cookie : XcbGetKeyboardControlCookieT, e : XcbGenericErrorT**) : XcbGetKeyboardControlReplyT*
  # Returns A cookie
  fun xcb_get_keyboard_control_unchecked(c : XcbConnectionT) : XcbGetKeyboardControlCookieT
  # Returns A cookie
  fun xcb_get_keyboard_mapping(c : XcbConnectionT, first_keycode : XcbKeycodeT, count : Uint8T) : XcbGetKeyboardMappingCookieT
  fun xcb_get_keyboard_mapping_keysyms(r : XcbGetKeyboardMappingReplyT*) : XcbKeysymT*
  fun xcb_get_keyboard_mapping_keysyms_end(r : XcbGetKeyboardMappingReplyT*) : XcbGenericIteratorT
  fun xcb_get_keyboard_mapping_keysyms_length(r : XcbGetKeyboardMappingReplyT*) : LibC::Int
  # Return the reply
  fun xcb_get_keyboard_mapping_reply(c : XcbConnectionT, cookie : XcbGetKeyboardMappingCookieT, e : XcbGenericErrorT**) : XcbGetKeyboardMappingReplyT*
  fun xcb_get_keyboard_mapping_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_get_keyboard_mapping_unchecked(c : XcbConnectionT, first_keycode : XcbKeycodeT, count : Uint8T) : XcbGetKeyboardMappingCookieT
  # Returns the maximum request length that this server accepts.
  fun xcb_get_maximum_request_length(c : XcbConnectionT) : Uint32T
  # Returns A cookie
  fun xcb_get_modifier_mapping(c : XcbConnectionT) : XcbGetModifierMappingCookieT
  fun xcb_get_modifier_mapping_keycodes(r : XcbGetModifierMappingReplyT*) : XcbKeycodeT*
  fun xcb_get_modifier_mapping_keycodes_end(r : XcbGetModifierMappingReplyT*) : XcbGenericIteratorT
  fun xcb_get_modifier_mapping_keycodes_length(r : XcbGetModifierMappingReplyT*) : LibC::Int
  # Return the reply
  fun xcb_get_modifier_mapping_reply(c : XcbConnectionT, cookie : XcbGetModifierMappingCookieT, e : XcbGenericErrorT**) : XcbGetModifierMappingReplyT*
  fun xcb_get_modifier_mapping_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_get_modifier_mapping_unchecked(c : XcbConnectionT) : XcbGetModifierMappingCookieT
  # Returns A cookie
  fun xcb_get_motion_events(c : XcbConnectionT, window : XcbWindowT, start : XcbTimestampT, stop : XcbTimestampT) : XcbGetMotionEventsCookieT
  fun xcb_get_motion_events_events(r : XcbGetMotionEventsReplyT*) : XcbTimecoordT*
  fun xcb_get_motion_events_events_iterator(r : XcbGetMotionEventsReplyT*) : XcbTimecoordIteratorT
  fun xcb_get_motion_events_events_length(r : XcbGetMotionEventsReplyT*) : LibC::Int
  # Return the reply
  fun xcb_get_motion_events_reply(c : XcbConnectionT, cookie : XcbGetMotionEventsCookieT, e : XcbGenericErrorT**) : XcbGetMotionEventsReplyT*
  fun xcb_get_motion_events_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_get_motion_events_unchecked(c : XcbConnectionT, window : XcbWindowT, start : XcbTimestampT, stop : XcbTimestampT) : XcbGetMotionEventsCookieT
  # Returns A cookie
  fun xcb_get_pointer_control(c : XcbConnectionT) : XcbGetPointerControlCookieT
  # Return the reply
  fun xcb_get_pointer_control_reply(c : XcbConnectionT, cookie : XcbGetPointerControlCookieT, e : XcbGenericErrorT**) : XcbGetPointerControlReplyT*
  # Returns A cookie
  fun xcb_get_pointer_control_unchecked(c : XcbConnectionT) : XcbGetPointerControlCookieT
  # Returns A cookie
  fun xcb_get_pointer_mapping(c : XcbConnectionT) : XcbGetPointerMappingCookieT
  fun xcb_get_pointer_mapping_map(r : XcbGetPointerMappingReplyT*) : Uint8T*
  fun xcb_get_pointer_mapping_map_end(r : XcbGetPointerMappingReplyT*) : XcbGenericIteratorT
  fun xcb_get_pointer_mapping_map_length(r : XcbGetPointerMappingReplyT*) : LibC::Int
  # Return the reply
  fun xcb_get_pointer_mapping_reply(c : XcbConnectionT, cookie : XcbGetPointerMappingCookieT, e : XcbGenericErrorT**) : XcbGetPointerMappingReplyT*
  fun xcb_get_pointer_mapping_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_get_pointer_mapping_unchecked(c : XcbConnectionT) : XcbGetPointerMappingCookieT
  # Gets a window property
  fun xcb_get_property(c : XcbConnectionT, _delete : Uint8T, window : XcbWindowT, property : XcbAtomT, type : XcbAtomT, long_offset : Uint32T, long_length : Uint32T) : XcbGetPropertyCookieT
  # Return the reply
  fun xcb_get_property_reply(c : XcbConnectionT, cookie : XcbGetPropertyCookieT, e : XcbGenericErrorT**) : XcbGetPropertyReplyT*
  fun xcb_get_property_sizeof(_buffer : Void*) : LibC::Int
  # Gets a window property
  fun xcb_get_property_unchecked(c : XcbConnectionT, _delete : Uint8T, window : XcbWindowT, property : XcbAtomT, type : XcbAtomT, long_offset : Uint32T, long_length : Uint32T) : XcbGetPropertyCookieT
  fun xcb_get_property_value(r : XcbGetPropertyReplyT*) : Void*
  fun xcb_get_property_value_end(r : XcbGetPropertyReplyT*) : XcbGenericIteratorT
  fun xcb_get_property_value_length(r : XcbGetPropertyReplyT*) : LibC::Int
  # Don't use this, only needed by the generated code.
  fun xcb_get_reply_fds(c : XcbConnectionT, reply : Void*, replylen : LibC::SizeT) : LibC::Int*
  # Returns A cookie
  fun xcb_get_screen_saver(c : XcbConnectionT) : XcbGetScreenSaverCookieT
  # Return the reply
  fun xcb_get_screen_saver_reply(c : XcbConnectionT, cookie : XcbGetScreenSaverCookieT, e : XcbGenericErrorT**) : XcbGetScreenSaverReplyT*
  # Returns A cookie
  fun xcb_get_screen_saver_unchecked(c : XcbConnectionT) : XcbGetScreenSaverCookieT
  # Gets the owner of a selection
  fun xcb_get_selection_owner(c : XcbConnectionT, selection : XcbAtomT) : XcbGetSelectionOwnerCookieT
  # Return the reply
  fun xcb_get_selection_owner_reply(c : XcbConnectionT, cookie : XcbGetSelectionOwnerCookieT, e : XcbGenericErrorT**) : XcbGetSelectionOwnerReplyT*
  # Gets the owner of a selection
  fun xcb_get_selection_owner_unchecked(c : XcbConnectionT, selection : XcbAtomT) : XcbGetSelectionOwnerCookieT
  # Access the data returned by the server.
  fun xcb_get_setup(c : XcbConnectionT) : XcbSetupT*
  # Gets window attributes
  fun xcb_get_window_attributes(c : XcbConnectionT, window : XcbWindowT) : XcbGetWindowAttributesCookieT
  # Return the reply
  fun xcb_get_window_attributes_reply(c : XcbConnectionT, cookie : XcbGetWindowAttributesCookieT, e : XcbGenericErrorT**) : XcbGetWindowAttributesReplyT*
  # Gets window attributes
  fun xcb_get_window_attributes_unchecked(c : XcbConnectionT, window : XcbWindowT) : XcbGetWindowAttributesCookieT
  # Grab pointer button(s)
  fun xcb_grab_button(c : XcbConnectionT, owner_events : Uint8T, grab_window : XcbWindowT, event_mask : Uint16T, pointer_mode : Uint8T, keyboard_mode : Uint8T, confine_to : XcbWindowT, cursor : XcbCursorT, button : Uint8T, modifiers : Uint16T) : XcbVoidCookieT
  # Grab pointer button(s)
  fun xcb_grab_button_checked(c : XcbConnectionT, owner_events : Uint8T, grab_window : XcbWindowT, event_mask : Uint16T, pointer_mode : Uint8T, keyboard_mode : Uint8T, confine_to : XcbWindowT, cursor : XcbCursorT, button : Uint8T, modifiers : Uint16T) : XcbVoidCookieT
  # Grab keyboard key(s)
  fun xcb_grab_key(c : XcbConnectionT, owner_events : Uint8T, grab_window : XcbWindowT, modifiers : Uint16T, key : XcbKeycodeT, pointer_mode : Uint8T, keyboard_mode : Uint8T) : XcbVoidCookieT
  # Grab keyboard key(s)
  fun xcb_grab_key_checked(c : XcbConnectionT, owner_events : Uint8T, grab_window : XcbWindowT, modifiers : Uint16T, key : XcbKeycodeT, pointer_mode : Uint8T, keyboard_mode : Uint8T) : XcbVoidCookieT
  # Grab the keyboard
  fun xcb_grab_keyboard(c : XcbConnectionT, owner_events : Uint8T, grab_window : XcbWindowT, time : XcbTimestampT, pointer_mode : Uint8T, keyboard_mode : Uint8T) : XcbGrabKeyboardCookieT
  # Return the reply
  fun xcb_grab_keyboard_reply(c : XcbConnectionT, cookie : XcbGrabKeyboardCookieT, e : XcbGenericErrorT**) : XcbGrabKeyboardReplyT*
  # Grab the keyboard
  fun xcb_grab_keyboard_unchecked(c : XcbConnectionT, owner_events : Uint8T, grab_window : XcbWindowT, time : XcbTimestampT, pointer_mode : Uint8T, keyboard_mode : Uint8T) : XcbGrabKeyboardCookieT
  # Grab the pointer
  fun xcb_grab_pointer(c : XcbConnectionT, owner_events : Uint8T, grab_window : XcbWindowT, event_mask : Uint16T, pointer_mode : Uint8T, keyboard_mode : Uint8T, confine_to : XcbWindowT, cursor : XcbCursorT, time : XcbTimestampT) : XcbGrabPointerCookieT
  # Return the reply
  fun xcb_grab_pointer_reply(c : XcbConnectionT, cookie : XcbGrabPointerCookieT, e : XcbGenericErrorT**) : XcbGrabPointerReplyT*
  # Grab the pointer
  fun xcb_grab_pointer_unchecked(c : XcbConnectionT, owner_events : Uint8T, grab_window : XcbWindowT, event_mask : Uint16T, pointer_mode : Uint8T, keyboard_mode : Uint8T, confine_to : XcbWindowT, cursor : XcbCursorT, time : XcbTimestampT) : XcbGrabPointerCookieT
  # Returns A cookie
  fun xcb_grab_server(c : XcbConnectionT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_grab_server_checked(c : XcbConnectionT) : XcbVoidCookieT
  fun xcb_host_address(r : XcbHostT*) : Uint8T*
  fun xcb_host_address_end(r : XcbHostT*) : XcbGenericIteratorT
  fun xcb_host_address_length(r : XcbHostT*) : LibC::Int
  # Host byte order.
  fun xcb_host_byte_order : XcbImageOrderT
  # Return the iterator pointing to the last element
  fun xcb_host_end(i : XcbHostIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_host_next(i : XcbHostIteratorT*)
  fun xcb_host_sizeof(_buffer : Void*) : LibC::Int
  # Deliver a GetProperty request to the X server.
  fun xcb_icccm_get_text_property(c : XcbConnectionT, window : XcbWindowT, property : XcbAtomT) : XcbGetPropertyCookieT
  # Fill given structure with the property value of a window.
  fun xcb_icccm_get_text_property_reply(c : XcbConnectionT, cookie : XcbGetPropertyCookieT, prop : XcbIcccmGetTextPropertyReplyT*, e : XcbGenericErrorT**) : Uint8T
  # Wipe prop structure members previously allocated by xcb_icccm_get_text_property_reply().
  fun xcb_icccm_get_text_property_reply_wipe(prop : XcbIcccmGetTextPropertyReplyT*)
  fun xcb_icccm_get_text_property_unchecked(c : XcbConnectionT, window : XcbWindowT, property : XcbAtomT) : XcbGetPropertyCookieT
  # Deliver a GetProperty request to the X server for WM_CLASS.
  fun xcb_icccm_get_wm_class(c : XcbConnectionT, window : XcbWindowT) : XcbGetPropertyCookieT
  # Fill give structure with the WM_CLASS property of a window.
  fun xcb_icccm_get_wm_class_from_reply(prop : XcbIcccmGetWmClassReplyT*, reply : XcbGetPropertyReplyT*) : Uint8T
  # Fill given structure with the WM_CLASS property of a window.
  fun xcb_icccm_get_wm_class_reply(c : XcbConnectionT, cookie : XcbGetPropertyCookieT, prop : XcbIcccmGetWmClassReplyT*, e : XcbGenericErrorT**) : Uint8T
  # Wipe prop structure members previously allocated by xcb_icccm_get_wm_class_reply().
  fun xcb_icccm_get_wm_class_reply_wipe(prop : XcbIcccmGetWmClassReplyT*)
  fun xcb_icccm_get_wm_class_unchecked(c : XcbConnectionT, window : XcbWindowT) : XcbGetPropertyCookieT
  # Send request to get WM_CLIENT_MACHINE property of a window.
  fun xcb_icccm_get_wm_client_machine(c : XcbConnectionT, window : XcbWindowT) : XcbGetPropertyCookieT
  # Fill given structure with the WM_CLIENT_MACHINE property of a window.
  fun xcb_icccm_get_wm_client_machine_reply(c : XcbConnectionT, cookie : XcbGetPropertyCookieT, prop : XcbIcccmGetTextPropertyReplyT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_icccm_get_wm_client_machine_unchecked(c : XcbConnectionT, window : XcbWindowT) : XcbGetPropertyCookieT
  # Send request to get WM_COLORMAP_WINDOWS property of a given window.
  fun xcb_icccm_get_wm_colormap_windows(c : XcbConnectionT, window : XcbWindowT, wm_colormap_windows_atom : XcbAtomT) : XcbGetPropertyCookieT
  # Fill the given structure with the WM_COLORMAP_WINDOWS property of a window.
  fun xcb_icccm_get_wm_colormap_windows_from_reply(reply : XcbGetPropertyReplyT*, colormap_windows : XcbIcccmGetWmColormapWindowsReplyT*) : Uint8T
  # Fill the given structure with the WM_COLORMAP_WINDOWS property of a window.
  fun xcb_icccm_get_wm_colormap_windows_reply(c : XcbConnectionT, cookie : XcbGetPropertyCookieT, windows : XcbIcccmGetWmColormapWindowsReplyT*, e : XcbGenericErrorT**) : Uint8T
  # Wipe protocols structure members previously allocated by xcb_icccm_get_wm_colormap_windows_reply().
  fun xcb_icccm_get_wm_colormap_windows_reply_wipe(windows : XcbIcccmGetWmColormapWindowsReplyT*)
  fun xcb_icccm_get_wm_colormap_windows_unchecked(c : XcbConnectionT, window : XcbWindowT, wm_colormap_windows_atom : XcbAtomT) : XcbGetPropertyCookieT
  # Send request to get WM_HINTS property of a window.
  fun xcb_icccm_get_wm_hints(c : XcbConnectionT, window : XcbWindowT) : XcbGetPropertyCookieT
  # Fill given structure with the WM_HINTS property of a window.
  fun xcb_icccm_get_wm_hints_from_reply(hints : XcbIcccmWmHintsT*, reply : XcbGetPropertyReplyT*) : Uint8T
  # Fill given structure with the WM_HINTS property of a window.
  fun xcb_icccm_get_wm_hints_reply(c : XcbConnectionT, cookie : XcbGetPropertyCookieT, hints : XcbIcccmWmHintsT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_icccm_get_wm_hints_unchecked(c : XcbConnectionT, window : XcbWindowT) : XcbGetPropertyCookieT
  # Send request to get WM_ICON_NAME property of a window.
  fun xcb_icccm_get_wm_icon_name(c : XcbConnectionT, window : XcbWindowT) : XcbGetPropertyCookieT
  # Fill given structure with the WM_ICON_NAME property of a window.
  fun xcb_icccm_get_wm_icon_name_reply(c : XcbConnectionT, cookie : XcbGetPropertyCookieT, prop : XcbIcccmGetTextPropertyReplyT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_icccm_get_wm_icon_name_unchecked(c : XcbConnectionT, window : XcbWindowT) : XcbGetPropertyCookieT
  # Deliver a GetProperty request to the X server for WM_NAME.
  fun xcb_icccm_get_wm_name(c : XcbConnectionT, window : XcbWindowT) : XcbGetPropertyCookieT
  # Fill given structure with the WM_NAME property of a window.
  fun xcb_icccm_get_wm_name_reply(c : XcbConnectionT, cookie : XcbGetPropertyCookieT, prop : XcbIcccmGetTextPropertyReplyT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_icccm_get_wm_name_unchecked(c : XcbConnectionT, window : XcbWindowT) : XcbGetPropertyCookieT
  # Send request to get WM_NORMAL_HINTS property of a window.
  fun xcb_icccm_get_wm_normal_hints(c : XcbConnectionT, window : XcbWindowT) : XcbGetPropertyCookieT
  # Fill given structure with the WM_NORMAL_HINTS property of a window.
  fun xcb_icccm_get_wm_normal_hints_reply(c : XcbConnectionT, cookie : XcbGetPropertyCookieT, hints : XcbSizeHintsT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_icccm_get_wm_normal_hints_unchecked(c : XcbConnectionT, window : XcbWindowT) : XcbGetPropertyCookieT
  # Send request to get WM_PROTOCOLS property of a given window.
  fun xcb_icccm_get_wm_protocols(c : XcbConnectionT, window : XcbWindowT, wm_protocol_atom : XcbAtomT) : XcbGetPropertyCookieT
  # Fill the given structure with the WM_PROTOCOLS property of a window.
  fun xcb_icccm_get_wm_protocols_from_reply(reply : XcbGetPropertyReplyT*, protocols : XcbIcccmGetWmProtocolsReplyT*) : Uint8T
  # Fill the given structure with the WM_PROTOCOLS property of a window.
  fun xcb_icccm_get_wm_protocols_reply(c : XcbConnectionT, cookie : XcbGetPropertyCookieT, protocols : XcbIcccmGetWmProtocolsReplyT*, e : XcbGenericErrorT**) : Uint8T
  # Wipe protocols structure members previously allocated by xcb_icccm_get_wm_protocols_reply().
  fun xcb_icccm_get_wm_protocols_reply_wipe(protocols : XcbIcccmGetWmProtocolsReplyT*)
  fun xcb_icccm_get_wm_protocols_unchecked(c : XcbConnectionT, window : XcbWindowT, wm_protocol_atom : XcbAtomT) : XcbGetPropertyCookieT
  # Send request to get size hints structure for the named property.
  fun xcb_icccm_get_wm_size_hints(c : XcbConnectionT, window : XcbWindowT, property : XcbAtomT) : XcbGetPropertyCookieT
  # Fill given structure with the WM_NORMAL_HINTS property of a window.
  fun xcb_icccm_get_wm_size_hints_from_reply(hints : XcbSizeHintsT*, reply : XcbGetPropertyReplyT*) : Uint8T
  # Fill given structure with the size hints of the named property.
  fun xcb_icccm_get_wm_size_hints_reply(c : XcbConnectionT, cookie : XcbGetPropertyCookieT, hints : XcbSizeHintsT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_icccm_get_wm_size_hints_unchecked(c : XcbConnectionT, window : XcbWindowT, property : XcbAtomT) : XcbGetPropertyCookieT
  # Send request to get WM_TRANSIENT_FOR property of a window.
  fun xcb_icccm_get_wm_transient_for(c : XcbConnectionT, window : XcbWindowT) : XcbGetPropertyCookieT
  # Fill given window pointer with the WM_TRANSIENT_FOR property of a window.
  fun xcb_icccm_get_wm_transient_for_from_reply(prop : XcbWindowT*, reply : XcbGetPropertyReplyT*) : Uint8T
  # Fill given structure with the WM_TRANSIENT_FOR property of a window.
  fun xcb_icccm_get_wm_transient_for_reply(c : XcbConnectionT, cookie : XcbGetPropertyCookieT, prop : XcbWindowT*, e : XcbGenericErrorT**) : Uint8T
  fun xcb_icccm_get_wm_transient_for_unchecked(c : XcbConnectionT, window : XcbWindowT) : XcbGetPropertyCookieT
  fun xcb_icccm_set_wm_class(c : XcbConnectionT, window : XcbWindowT, class_len : Uint32T, class_name : LibC::Char*) : XcbVoidCookieT
  # Deliver a SetProperty request to set WM_CLASS property value.
  fun xcb_icccm_set_wm_class_checked(c : XcbConnectionT, window : XcbWindowT, class_len : Uint32T, class_name : LibC::Char*) : XcbVoidCookieT
  fun xcb_icccm_set_wm_client_machine(c : XcbConnectionT, window : XcbWindowT, encoding : XcbAtomT, format : Uint8T, name_len : Uint32T, name : LibC::Char*) : XcbVoidCookieT
  # Deliver a SetProperty request to set WM_CLIENT_MACHINE property value.
  fun xcb_icccm_set_wm_client_machine_checked(c : XcbConnectionT, window : XcbWindowT, encoding : XcbAtomT, format : Uint8T, name_len : Uint32T, name : LibC::Char*) : XcbVoidCookieT
  fun xcb_icccm_set_wm_colormap_windows(c : XcbConnectionT, window : XcbWindowT, wm_colormap_windows_atom : XcbAtomT, list_len : Uint32T, list : XcbWindowT*) : XcbVoidCookieT
  # Deliver a ChangeProperty request to set WM_COLORMAP_WINDOWS property value.
  fun xcb_icccm_set_wm_colormap_windows_checked(c : XcbConnectionT, window : XcbWindowT, wm_colormap_windows_atom : XcbAtomT, list_len : Uint32T, list : XcbWindowT*) : XcbVoidCookieT
  fun xcb_icccm_set_wm_hints(c : XcbConnectionT, window : XcbWindowT, hints : XcbIcccmWmHintsT*) : XcbVoidCookieT
  # Deliver a SetProperty request to set WM_HINTS property value.
  fun xcb_icccm_set_wm_hints_checked(c : XcbConnectionT, window : XcbWindowT, hints : XcbIcccmWmHintsT*) : XcbVoidCookieT
  fun xcb_icccm_set_wm_icon_name(c : XcbConnectionT, window : XcbWindowT, encoding : XcbAtomT, format : Uint8T, name_len : Uint32T, name : LibC::Char*) : XcbVoidCookieT
  # Deliver a SetProperty request to set WM_ICON_NAME property value.
  fun xcb_icccm_set_wm_icon_name_checked(c : XcbConnectionT, window : XcbWindowT, encoding : XcbAtomT, format : Uint8T, name_len : Uint32T, name : LibC::Char*) : XcbVoidCookieT
  fun xcb_icccm_set_wm_name(c : XcbConnectionT, window : XcbWindowT, encoding : XcbAtomT, format : Uint8T, name_len : Uint32T, name : LibC::Char*) : XcbVoidCookieT
  # Deliver a SetProperty request to set WM_NAME property value.
  fun xcb_icccm_set_wm_name_checked(c : XcbConnectionT, window : XcbWindowT, encoding : XcbAtomT, format : Uint8T, name_len : Uint32T, name : LibC::Char*) : XcbVoidCookieT
  fun xcb_icccm_set_wm_normal_hints(c : XcbConnectionT, window : XcbWindowT, hints : XcbSizeHintsT*) : XcbVoidCookieT
  # Deliver a ChangeProperty request to set WM_NORMAL_HINTS property value.
  fun xcb_icccm_set_wm_normal_hints_checked(c : XcbConnectionT, window : XcbWindowT, hints : XcbSizeHintsT*) : XcbVoidCookieT
  fun xcb_icccm_set_wm_protocols(c : XcbConnectionT, window : XcbWindowT, wm_protocols : XcbAtomT, list_len : Uint32T, list : XcbAtomT*) : XcbVoidCookieT
  # Deliver a SetProperty request to set WM_PROTOCOLS property value.
  fun xcb_icccm_set_wm_protocols_checked(c : XcbConnectionT, window : XcbWindowT, wm_protocols : XcbAtomT, list_len : Uint32T, list : XcbAtomT*) : XcbVoidCookieT
  fun xcb_icccm_set_wm_size_hints(c : XcbConnectionT, window : XcbWindowT, property : XcbAtomT, hints : XcbSizeHintsT*) : XcbVoidCookieT
  # Deliver a ChangeProperty request to set a value to a given property.
  fun xcb_icccm_set_wm_size_hints_checked(c : XcbConnectionT, window : XcbWindowT, property : XcbAtomT, hints : XcbSizeHintsT*) : XcbVoidCookieT
  fun xcb_icccm_set_wm_transient_for(c : XcbConnectionT, window : XcbWindowT, transient_for_window : XcbWindowT) : XcbVoidCookieT
  # Deliver a SetProperty request to set WM_TRANSIENT_FOR property value.
  fun xcb_icccm_set_wm_transient_for_checked(c : XcbConnectionT, window : XcbWindowT, transient_for_window : XcbWindowT) : XcbVoidCookieT
  # Set size hints to a given aspect ratios.
  fun xcb_icccm_size_hints_set_aspect(hints : XcbSizeHintsT*, min_aspect_num : Int32T, min_aspect_den : Int32T, max_aspect_num : Int32T, max_aspect_den : Int32T)
  # Set size hints to a given base size.
  fun xcb_icccm_size_hints_set_base_size(hints : XcbSizeHintsT*, base_width : Int32T, base_height : Int32T)
  # Set size hints to a given maximum size.
  fun xcb_icccm_size_hints_set_max_size(hints : XcbSizeHintsT*, max_width : Int32T, max_height : Int32T)
  # Set size hints to a given minimum size.
  fun xcb_icccm_size_hints_set_min_size(hints : XcbSizeHintsT*, min_width : Int32T, min_height : Int32T)
  # Set size hints to a given position.
  fun xcb_icccm_size_hints_set_position(hints : XcbSizeHintsT*, user_specified : LibC::Int, x : Int32T, y : Int32T)
  # Set size hints to a given resize increments.
  fun xcb_icccm_size_hints_set_resize_inc(hints : XcbSizeHintsT*, width_inc : Int32T, height_inc : Int32T)
  # Set size hints to a given size.
  fun xcb_icccm_size_hints_set_size(hints : XcbSizeHintsT*, user_specified : LibC::Int, width : Int32T, height : Int32T)
  # Set size hints to a given window gravity.
  fun xcb_icccm_size_hints_set_win_gravity(hints : XcbSizeHintsT*, win_gravity : XcbGravityT)
  # Get urgency hint.
  fun xcb_icccm_wm_hints_get_urgency(hints : XcbIcccmWmHintsT*) : Uint32T
  # Set icon mask bitmap.
  fun xcb_icccm_wm_hints_set_icon_mask(hints : XcbIcccmWmHintsT*, icon_mask : XcbPixmapT)
  # Set pixmap to be used as icon.
  fun xcb_icccm_wm_hints_set_icon_pixmap(hints : XcbIcccmWmHintsT*, icon_pixmap : XcbPixmapT)
  # Set window identifier to be used as icon.
  fun xcb_icccm_wm_hints_set_icon_window(hints : XcbIcccmWmHintsT*, icon_window : XcbWindowT)
  # Set hints state to 'iconic'.
  fun xcb_icccm_wm_hints_set_iconic(hints : XcbIcccmWmHintsT*)
  # Set input focus.
  fun xcb_icccm_wm_hints_set_input(hints : XcbIcccmWmHintsT*, input : Uint8T)
  # Set hints state to none.
  fun xcb_icccm_wm_hints_set_none(hints : XcbIcccmWmHintsT*)
  # Set hints state to 'normal'.
  fun xcb_icccm_wm_hints_set_normal(hints : XcbIcccmWmHintsT*)
  # Set urgency hints flag.
  fun xcb_icccm_wm_hints_set_urgency(hints : XcbIcccmWmHintsT*)
  # Set identifier of related window group.
  fun xcb_icccm_wm_hints_set_window_group(hints : XcbIcccmWmHintsT*, window_group : XcbWindowT)
  # Set hints state to 'withdrawn'.
  fun xcb_icccm_wm_hints_set_withdrawn(hints : XcbIcccmWmHintsT*)
  # Update the cached data of an image.
  fun xcb_image_annotate(image : XcbImageT*)
  # Convert an image to a new format.
  fun xcb_image_convert(src : XcbImageT*, dst : XcbImageT*) : XcbImageT*
  # Create a new image.
  fun xcb_image_create(width : Uint16T, height : Uint16T, format : XcbImageFormatT, xpad : Uint8T, depth : Uint8T, bpp : Uint8T, unit : Uint8T, byte_order : XcbImageOrderT, bit_order : XcbImageOrderT, base : Void*, bytes : Uint32T, data : Uint8T*) : XcbImageT*
  # Create an image from user-supplied bitmap data.
  fun xcb_image_create_from_bitmap_data(data : Uint8T*, width : Uint32T, height : Uint32T) : XcbImageT*
  # Create a new image in connection-native format.
  fun xcb_image_create_native(c : XcbConnectionT, width : Uint16T, height : Uint16T, format : XcbImageFormatT, depth : Uint8T, base : Void*, bytes : Uint32T, data : Uint8T*) : XcbImageT*
  # Destroy an image.
  fun xcb_image_destroy(image : XcbImageT*)
  # Get an image from the X server.
  fun xcb_image_get(conn : XcbConnectionT, draw : XcbDrawableT, x : Int16T, y : Int16T, width : Uint16T, height : Uint16T, plane_mask : Uint32T, format : XcbImageFormatT) : XcbImageT*
  # Get a pixel from an image.
  fun xcb_image_get_pixel(image : XcbImageT*, x : Uint32T, y : Uint32T) : Uint32T
  fun xcb_image_get_pixel_xy32_l = xcb_image_get_pixel_XY32L(image : XcbImageT*, x : Uint32T, y : Uint32T) : LibC::Int
  fun xcb_image_get_pixel_xy32_m = xcb_image_get_pixel_XY32M(image : XcbImageT*, x : Uint32T, y : Uint32T) : LibC::Int
  fun xcb_image_get_pixel_z32_l = xcb_image_get_pixel_Z32L(image : XcbImageT*, x : Uint32T, y : Uint32T) : Uint32T
  fun xcb_image_get_pixel_z32_m = xcb_image_get_pixel_Z32M(image : XcbImageT*, x : Uint32T, y : Uint32T) : Uint32T
  fun xcb_image_get_pixel_z8 = xcb_image_get_pixel_Z8(image : XcbImageT*, x : Uint32T, y : Uint32T) : Uint8T
  # Check image for or convert image to native format.
  fun xcb_image_native(c : XcbConnectionT, image : XcbImageT*, convert : LibC::Int) : XcbImageT*
  # Put an image onto the X server.
  fun xcb_image_put(conn : XcbConnectionT, draw : XcbDrawableT, gc : XcbGcontextT, image : XcbImageT*, x : Int16T, y : Int16T, left_pad : Uint8T) : XcbVoidCookieT
  # Put a pixel to an image.
  fun xcb_image_put_pixel(image : XcbImageT*, x : Uint32T, y : Uint32T, pixel : Uint32T)
  fun xcb_image_put_pixel_xy32_l = xcb_image_put_pixel_XY32L(image : XcbImageT*, x : Uint32T, y : Uint32T, pixel : LibC::Int)
  # XCB Image fast pixel ops.
  fun xcb_image_put_pixel_xy32_m = xcb_image_put_pixel_XY32M(image : XcbImageT*, x : Uint32T, y : Uint32T, pixel : LibC::Int)
  fun xcb_image_put_pixel_z32_l = xcb_image_put_pixel_Z32L(image : XcbImageT*, x : Uint32T, y : Uint32T, pixel : Uint32T)
  fun xcb_image_put_pixel_z32_m = xcb_image_put_pixel_Z32M(image : XcbImageT*, x : Uint32T, y : Uint32T, pixel : Uint32T)
  fun xcb_image_put_pixel_z8 = xcb_image_put_pixel_Z8(image : XcbImageT*, x : Uint32T, y : Uint32T, pixel : Uint8T)
  # Read image data into a shared memory xcb_image_t.
  fun xcb_image_shm_get(conn : XcbConnectionT, draw : XcbDrawableT, image : XcbImageT*, shminfo : XcbShmSegmentInfoT, x : Int16T, y : Int16T, plane_mask : Uint32T) : LibC::Int
  # Put the data of an xcb_image_t onto a drawable using the MIT Shm Extension.
  fun xcb_image_shm_put(conn : XcbConnectionT, draw : XcbDrawableT, gc : XcbGcontextT, image : XcbImageT*, shminfo : XcbShmSegmentInfoT, src_x : Int16T, src_y : Int16T, dest_x : Int16T, dest_y : Int16T, src_width : Uint16T, src_height : Uint16T, send_event : Uint8T) : XcbImageT*
  # Extract a subimage of an image.
  fun xcb_image_subimage(image : XcbImageT*, x : Uint32T, y : Uint32T, width : Uint32T, height : Uint32T, base : Void*, bytes : Uint32T, data : Uint8T*) : XcbImageT*
  # Draws text
  fun xcb_image_text_16(c : XcbConnectionT, string_len : Uint8T, drawable : XcbDrawableT, gc : XcbGcontextT, x : Int16T, y : Int16T, string : XcbChar2bT*) : XcbVoidCookieT
  # Draws text
  fun xcb_image_text_16_checked(c : XcbConnectionT, string_len : Uint8T, drawable : XcbDrawableT, gc : XcbGcontextT, x : Int16T, y : Int16T, string : XcbChar2bT*) : XcbVoidCookieT
  fun xcb_image_text_16_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_image_text_16_string(r : XcbImageText16RequestT*) : XcbChar2bT*
  fun xcb_image_text_16_string_iterator(r : XcbImageText16RequestT*) : XcbChar2bIteratorT
  fun xcb_image_text_16_string_length(r : XcbImageText16RequestT*) : LibC::Int
  # Draws text
  fun xcb_image_text_8(c : XcbConnectionT, string_len : Uint8T, drawable : XcbDrawableT, gc : XcbGcontextT, x : Int16T, y : Int16T, string : LibC::Char*) : XcbVoidCookieT
  # Draws text
  fun xcb_image_text_8_checked(c : XcbConnectionT, string_len : Uint8T, drawable : XcbDrawableT, gc : XcbGcontextT, x : Int16T, y : Int16T, string : LibC::Char*) : XcbVoidCookieT
  fun xcb_image_text_8_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_image_text_8_string(r : XcbImageText8RequestT*) : LibC::Char*
  fun xcb_image_text_8_string_end(r : XcbImageText8RequestT*) : XcbGenericIteratorT
  fun xcb_image_text_8_string_length(r : XcbImageText8RequestT*) : LibC::Int
  # Returns A cookie
  fun xcb_install_colormap(c : XcbConnectionT, cmap : XcbColormapT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_install_colormap_checked(c : XcbConnectionT, cmap : XcbColormapT) : XcbVoidCookieT
  # Get atom identifier by name
  fun xcb_intern_atom(c : XcbConnectionT, only_if_exists : Uint8T, name_len : Uint16T, name : LibC::Char*) : XcbInternAtomCookieT
  # Return the reply
  fun xcb_intern_atom_reply(c : XcbConnectionT, cookie : XcbInternAtomCookieT, e : XcbGenericErrorT**) : XcbInternAtomReplyT*
  fun xcb_intern_atom_sizeof(_buffer : Void*) : LibC::Int
  # Get atom identifier by name
  fun xcb_intern_atom_unchecked(c : XcbConnectionT, only_if_exists : Uint8T, name_len : Uint16T, name : LibC::Char*) : XcbInternAtomCookieT
  fun xcb_is_cursor_key(keysym : XcbKeysymT) : LibC::Int
  fun xcb_is_function_key(keysym : XcbKeysymT) : LibC::Int
  fun xcb_is_keypad_key(keysym : XcbKeysymT) : LibC::Int
  fun xcb_is_misc_function_key(keysym : XcbKeysymT) : LibC::Int
  fun xcb_is_modifier_key(keysym : XcbKeysymT) : LibC::Int
  fun xcb_is_pf_key(keysym : XcbKeysymT) : LibC::Int
  fun xcb_is_private_keypad_key(keysym : XcbKeysymT) : LibC::Int
  fun xcb_key_press_lookup_keysym(syms : XcbKeySymbolsT, event : XcbKeyPressEventT*, col : LibC::Int) : XcbKeysymT
  fun xcb_key_release_lookup_keysym(syms : XcbKeySymbolsT, event : XcbKeyReleaseEventT*, col : LibC::Int) : XcbKeysymT
  fun xcb_key_symbols_alloc(c : XcbConnectionT) : XcbKeySymbolsT
  fun xcb_key_symbols_free(syms : XcbKeySymbolsT)
  # Get the keycodes attached to a keysyms. There can be several value, so what is returned is an array of keycode terminated by XCB_NO_SYMBOL. You are responsible to free it. Be aware that this function can be slow. It will convert all combinations of all available keycodes to keysyms to find the ones that match.
  fun xcb_key_symbols_get_keycode(syms : XcbKeySymbolsT, keysym : XcbKeysymT) : XcbKeycodeT*
  fun xcb_key_symbols_get_keysym(syms : XcbKeySymbolsT, keycode : XcbKeycodeT, col : LibC::Int) : XcbKeysymT
  # Return the iterator pointing to the last element
  fun xcb_keycode32_end(i : XcbKeycode32IteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_keycode32_next(i : XcbKeycode32IteratorT*)
  # Return the iterator pointing to the last element
  fun xcb_keycode_end(i : XcbKeycodeIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_keycode_next(i : XcbKeycodeIteratorT*)
  # Return the iterator pointing to the last element
  fun xcb_keysym_end(i : XcbKeysymIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_keysym_next(i : XcbKeysymIteratorT*)
  # kills a client
  fun xcb_kill_client(c : XcbConnectionT, resource : Uint32T) : XcbVoidCookieT
  # kills a client
  fun xcb_kill_client_checked(c : XcbConnectionT, resource : Uint32T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_list_extensions(c : XcbConnectionT) : XcbListExtensionsCookieT
  fun xcb_list_extensions_names_iterator(r : XcbListExtensionsReplyT*) : XcbStrIteratorT
  fun xcb_list_extensions_names_length(r : XcbListExtensionsReplyT*) : LibC::Int
  # Return the reply
  fun xcb_list_extensions_reply(c : XcbConnectionT, cookie : XcbListExtensionsCookieT, e : XcbGenericErrorT**) : XcbListExtensionsReplyT*
  fun xcb_list_extensions_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_list_extensions_unchecked(c : XcbConnectionT) : XcbListExtensionsCookieT
  # get matching font names
  fun xcb_list_fonts(c : XcbConnectionT, max_names : Uint16T, pattern_len : Uint16T, pattern : LibC::Char*) : XcbListFontsCookieT
  fun xcb_list_fonts_names_iterator(r : XcbListFontsReplyT*) : XcbStrIteratorT
  fun xcb_list_fonts_names_length(r : XcbListFontsReplyT*) : LibC::Int
  # Return the reply
  fun xcb_list_fonts_reply(c : XcbConnectionT, cookie : XcbListFontsCookieT, e : XcbGenericErrorT**) : XcbListFontsReplyT*
  fun xcb_list_fonts_sizeof(_buffer : Void*) : LibC::Int
  # get matching font names
  fun xcb_list_fonts_unchecked(c : XcbConnectionT, max_names : Uint16T, pattern_len : Uint16T, pattern : LibC::Char*) : XcbListFontsCookieT
  # get matching font names and information
  fun xcb_list_fonts_with_info(c : XcbConnectionT, max_names : Uint16T, pattern_len : Uint16T, pattern : LibC::Char*) : XcbListFontsWithInfoCookieT
  fun xcb_list_fonts_with_info_name(r : XcbListFontsWithInfoReplyT*) : LibC::Char*
  fun xcb_list_fonts_with_info_name_end(r : XcbListFontsWithInfoReplyT*) : XcbGenericIteratorT
  fun xcb_list_fonts_with_info_name_length(r : XcbListFontsWithInfoReplyT*) : LibC::Int
  fun xcb_list_fonts_with_info_properties(r : XcbListFontsWithInfoReplyT*) : XcbFontpropT*
  fun xcb_list_fonts_with_info_properties_iterator(r : XcbListFontsWithInfoReplyT*) : XcbFontpropIteratorT
  fun xcb_list_fonts_with_info_properties_length(r : XcbListFontsWithInfoReplyT*) : LibC::Int
  # Return the reply
  fun xcb_list_fonts_with_info_reply(c : XcbConnectionT, cookie : XcbListFontsWithInfoCookieT, e : XcbGenericErrorT**) : XcbListFontsWithInfoReplyT*
  fun xcb_list_fonts_with_info_sizeof(_buffer : Void*) : LibC::Int
  # get matching font names and information
  fun xcb_list_fonts_with_info_unchecked(c : XcbConnectionT, max_names : Uint16T, pattern_len : Uint16T, pattern : LibC::Char*) : XcbListFontsWithInfoCookieT
  # Returns A cookie
  fun xcb_list_hosts(c : XcbConnectionT) : XcbListHostsCookieT
  fun xcb_list_hosts_hosts_iterator(r : XcbListHostsReplyT*) : XcbHostIteratorT
  fun xcb_list_hosts_hosts_length(r : XcbListHostsReplyT*) : LibC::Int
  # Return the reply
  fun xcb_list_hosts_reply(c : XcbConnectionT, cookie : XcbListHostsCookieT, e : XcbGenericErrorT**) : XcbListHostsReplyT*
  fun xcb_list_hosts_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_list_hosts_unchecked(c : XcbConnectionT) : XcbListHostsCookieT
  # Returns A cookie
  fun xcb_list_installed_colormaps(c : XcbConnectionT, window : XcbWindowT) : XcbListInstalledColormapsCookieT
  fun xcb_list_installed_colormaps_cmaps(r : XcbListInstalledColormapsReplyT*) : XcbColormapT*
  fun xcb_list_installed_colormaps_cmaps_end(r : XcbListInstalledColormapsReplyT*) : XcbGenericIteratorT
  fun xcb_list_installed_colormaps_cmaps_length(r : XcbListInstalledColormapsReplyT*) : LibC::Int
  # Return the reply
  fun xcb_list_installed_colormaps_reply(c : XcbConnectionT, cookie : XcbListInstalledColormapsCookieT, e : XcbGenericErrorT**) : XcbListInstalledColormapsReplyT*
  fun xcb_list_installed_colormaps_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_list_installed_colormaps_unchecked(c : XcbConnectionT, window : XcbWindowT) : XcbListInstalledColormapsCookieT
  # Returns A cookie
  fun xcb_list_properties(c : XcbConnectionT, window : XcbWindowT) : XcbListPropertiesCookieT
  fun xcb_list_properties_atoms(r : XcbListPropertiesReplyT*) : XcbAtomT*
  fun xcb_list_properties_atoms_end(r : XcbListPropertiesReplyT*) : XcbGenericIteratorT
  fun xcb_list_properties_atoms_length(r : XcbListPropertiesReplyT*) : LibC::Int
  # Return the reply
  fun xcb_list_properties_reply(c : XcbConnectionT, cookie : XcbListPropertiesCookieT, e : XcbGenericErrorT**) : XcbListPropertiesReplyT*
  fun xcb_list_properties_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_list_properties_unchecked(c : XcbConnectionT, window : XcbWindowT) : XcbListPropertiesCookieT
  # Returns A cookie
  fun xcb_lookup_color(c : XcbConnectionT, cmap : XcbColormapT, name_len : Uint16T, name : LibC::Char*) : XcbLookupColorCookieT
  # Return the reply
  fun xcb_lookup_color_reply(c : XcbConnectionT, cookie : XcbLookupColorCookieT, e : XcbGenericErrorT**) : XcbLookupColorReplyT*
  fun xcb_lookup_color_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_lookup_color_unchecked(c : XcbConnectionT, cmap : XcbColormapT, name_len : Uint16T, name : LibC::Char*) : XcbLookupColorCookieT
  # Returns A cookie
  fun xcb_map_subwindows(c : XcbConnectionT, window : XcbWindowT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_map_subwindows_checked(c : XcbConnectionT, window : XcbWindowT) : XcbVoidCookieT
  # Makes a window visible
  fun xcb_map_window(c : XcbConnectionT, window : XcbWindowT) : XcbVoidCookieT
  # Makes a window visible
  fun xcb_map_window_checked(c : XcbConnectionT, window : XcbWindowT) : XcbVoidCookieT
  # Create a low-order bitmask.
  fun xcb_mask(n : Uint32T) : Uint32T
  # Returns A cookie
  fun xcb_no_operation(c : XcbConnectionT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_no_operation_checked(c : XcbConnectionT) : XcbVoidCookieT
  # opens a font
  fun xcb_open_font(c : XcbConnectionT, fid : XcbFontT, name_len : Uint16T, name : LibC::Char*) : XcbVoidCookieT
  # opens a font
  fun xcb_open_font_checked(c : XcbConnectionT, fid : XcbFontT, name_len : Uint16T, name : LibC::Char*) : XcbVoidCookieT
  fun xcb_open_font_name(r : XcbOpenFontRequestT*) : LibC::Char*
  fun xcb_open_font_name_end(r : XcbOpenFontRequestT*) : XcbGenericIteratorT
  fun xcb_open_font_name_length(r : XcbOpenFontRequestT*) : LibC::Int
  fun xcb_open_font_sizeof(_buffer : Void*) : LibC::Int
  # Parses a display string name in the form documented by X(7x).
  fun xcb_parse_display(name : LibC::Char*, host : LibC::Char**, display : LibC::Int*, screen : LibC::Int*) : LibC::Int
  # Return the iterator pointing to the last element
  fun xcb_pixmap_end(i : XcbPixmapIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_pixmap_next(i : XcbPixmapIteratorT*)
  # Return the iterator pointing to the last element
  fun xcb_point_end(i : XcbPointIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_point_next(i : XcbPointIteratorT*)
  # Returns the next event or error from the server.
  fun xcb_poll_for_event(c : XcbConnectionT) : XcbGenericEventT*
  # Returns the next event without reading from the connection.
  fun xcb_poll_for_queued_event(c : XcbConnectionT) : XcbGenericEventT*
  # Poll for the reply of a given request.
  fun xcb_poll_for_reply(c : XcbConnectionT, request : LibC::UInt, reply : Void**, error : XcbGenericErrorT**) : LibC::Int
  # Poll for the reply of a given request, with 64-bit sequence number.
  fun xcb_poll_for_reply64(c : XcbConnectionT, request : Uint64T, reply : Void**, error : XcbGenericErrorT**) : LibC::Int
  # Returns the next event from a special queue
  fun xcb_poll_for_special_event(c : XcbConnectionT, se : XcbSpecialEventT) : XcbGenericEventT*
  # Returns A cookie
  fun xcb_poly_arc(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, arcs_len : Uint32T, arcs : XcbArcT*) : XcbVoidCookieT
  fun xcb_poly_arc_arcs(r : XcbPolyArcRequestT*) : XcbArcT*
  fun xcb_poly_arc_arcs_iterator(r : XcbPolyArcRequestT*) : XcbArcIteratorT
  fun xcb_poly_arc_arcs_length(r : XcbPolyArcRequestT*) : LibC::Int
  # Returns A cookie
  fun xcb_poly_arc_checked(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, arcs_len : Uint32T, arcs : XcbArcT*) : XcbVoidCookieT
  fun xcb_poly_arc_sizeof(_buffer : Void*, arcs_len : Uint32T) : LibC::Int
  # Returns A cookie
  fun xcb_poly_fill_arc(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, arcs_len : Uint32T, arcs : XcbArcT*) : XcbVoidCookieT
  fun xcb_poly_fill_arc_arcs(r : XcbPolyFillArcRequestT*) : XcbArcT*
  fun xcb_poly_fill_arc_arcs_iterator(r : XcbPolyFillArcRequestT*) : XcbArcIteratorT
  fun xcb_poly_fill_arc_arcs_length(r : XcbPolyFillArcRequestT*) : LibC::Int
  # Returns A cookie
  fun xcb_poly_fill_arc_checked(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, arcs_len : Uint32T, arcs : XcbArcT*) : XcbVoidCookieT
  fun xcb_poly_fill_arc_sizeof(_buffer : Void*, arcs_len : Uint32T) : LibC::Int
  # Fills rectangles
  fun xcb_poly_fill_rectangle(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, rectangles_len : Uint32T, rectangles : XcbRectangleT*) : XcbVoidCookieT
  # Fills rectangles
  fun xcb_poly_fill_rectangle_checked(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, rectangles_len : Uint32T, rectangles : XcbRectangleT*) : XcbVoidCookieT
  fun xcb_poly_fill_rectangle_rectangles(r : XcbPolyFillRectangleRequestT*) : XcbRectangleT*
  fun xcb_poly_fill_rectangle_rectangles_iterator(r : XcbPolyFillRectangleRequestT*) : XcbRectangleIteratorT
  fun xcb_poly_fill_rectangle_rectangles_length(r : XcbPolyFillRectangleRequestT*) : LibC::Int
  fun xcb_poly_fill_rectangle_sizeof(_buffer : Void*, rectangles_len : Uint32T) : LibC::Int
  # draw lines
  fun xcb_poly_line(c : XcbConnectionT, coordinate_mode : Uint8T, drawable : XcbDrawableT, gc : XcbGcontextT, points_len : Uint32T, points : XcbPointT*) : XcbVoidCookieT
  # draw lines
  fun xcb_poly_line_checked(c : XcbConnectionT, coordinate_mode : Uint8T, drawable : XcbDrawableT, gc : XcbGcontextT, points_len : Uint32T, points : XcbPointT*) : XcbVoidCookieT
  fun xcb_poly_line_points(r : XcbPolyLineRequestT*) : XcbPointT*
  fun xcb_poly_line_points_iterator(r : XcbPolyLineRequestT*) : XcbPointIteratorT
  fun xcb_poly_line_points_length(r : XcbPolyLineRequestT*) : LibC::Int
  fun xcb_poly_line_sizeof(_buffer : Void*, points_len : Uint32T) : LibC::Int
  # Returns A cookie
  fun xcb_poly_point(c : XcbConnectionT, coordinate_mode : Uint8T, drawable : XcbDrawableT, gc : XcbGcontextT, points_len : Uint32T, points : XcbPointT*) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_poly_point_checked(c : XcbConnectionT, coordinate_mode : Uint8T, drawable : XcbDrawableT, gc : XcbGcontextT, points_len : Uint32T, points : XcbPointT*) : XcbVoidCookieT
  fun xcb_poly_point_points(r : XcbPolyPointRequestT*) : XcbPointT*
  fun xcb_poly_point_points_iterator(r : XcbPolyPointRequestT*) : XcbPointIteratorT
  fun xcb_poly_point_points_length(r : XcbPolyPointRequestT*) : LibC::Int
  fun xcb_poly_point_sizeof(_buffer : Void*, points_len : Uint32T) : LibC::Int
  # Returns A cookie
  fun xcb_poly_rectangle(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, rectangles_len : Uint32T, rectangles : XcbRectangleT*) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_poly_rectangle_checked(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, rectangles_len : Uint32T, rectangles : XcbRectangleT*) : XcbVoidCookieT
  fun xcb_poly_rectangle_rectangles(r : XcbPolyRectangleRequestT*) : XcbRectangleT*
  fun xcb_poly_rectangle_rectangles_iterator(r : XcbPolyRectangleRequestT*) : XcbRectangleIteratorT
  fun xcb_poly_rectangle_rectangles_length(r : XcbPolyRectangleRequestT*) : LibC::Int
  fun xcb_poly_rectangle_sizeof(_buffer : Void*, rectangles_len : Uint32T) : LibC::Int
  # draw lines
  fun xcb_poly_segment(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, segments_len : Uint32T, segments : XcbSegmentT*) : XcbVoidCookieT
  # draw lines
  fun xcb_poly_segment_checked(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, segments_len : Uint32T, segments : XcbSegmentT*) : XcbVoidCookieT
  fun xcb_poly_segment_segments(r : XcbPolySegmentRequestT*) : XcbSegmentT*
  fun xcb_poly_segment_segments_iterator(r : XcbPolySegmentRequestT*) : XcbSegmentIteratorT
  fun xcb_poly_segment_segments_length(r : XcbPolySegmentRequestT*) : LibC::Int
  fun xcb_poly_segment_sizeof(_buffer : Void*, segments_len : Uint32T) : LibC::Int
  # Returns A cookie
  fun xcb_poly_text_16(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, x : Int16T, y : Int16T, items_len : Uint32T, items : Uint8T*) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_poly_text_16_checked(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, x : Int16T, y : Int16T, items_len : Uint32T, items : Uint8T*) : XcbVoidCookieT
  fun xcb_poly_text_16_items(r : XcbPolyText16RequestT*) : Uint8T*
  fun xcb_poly_text_16_items_end(r : XcbPolyText16RequestT*) : XcbGenericIteratorT
  fun xcb_poly_text_16_items_length(r : XcbPolyText16RequestT*) : LibC::Int
  fun xcb_poly_text_16_sizeof(_buffer : Void*, items_len : Uint32T) : LibC::Int
  # Returns A cookie
  fun xcb_poly_text_8(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, x : Int16T, y : Int16T, items_len : Uint32T, items : Uint8T*) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_poly_text_8_checked(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, x : Int16T, y : Int16T, items_len : Uint32T, items : Uint8T*) : XcbVoidCookieT
  fun xcb_poly_text_8_items(r : XcbPolyText8RequestT*) : Uint8T*
  fun xcb_poly_text_8_items_end(r : XcbPolyText8RequestT*) : XcbGenericIteratorT
  fun xcb_poly_text_8_items_length(r : XcbPolyText8RequestT*) : LibC::Int
  fun xcb_poly_text_8_sizeof(_buffer : Void*, items_len : Uint32T) : LibC::Int
  # Returns The number of set bits in the mask
  fun xcb_popcount(mask : Uint32T) : LibC::Int
  # Population count.
  fun xcb_popcount(x : Uint32T) : Uint32T
  # Prefetch of extension data into the extension cache
  fun xcb_prefetch_extension_data(c : XcbConnectionT, ext : XcbExtensionT*)
  # Prefetch the maximum request length without blocking.
  fun xcb_prefetch_maximum_request_length(c : XcbConnectionT)
  # Returns A cookie
  fun xcb_put_image(c : XcbConnectionT, format : Uint8T, drawable : XcbDrawableT, gc : XcbGcontextT, width : Uint16T, height : Uint16T, dst_x : Int16T, dst_y : Int16T, left_pad : Uint8T, depth : Uint8T, data_len : Uint32T, data : Uint8T*) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_put_image_checked(c : XcbConnectionT, format : Uint8T, drawable : XcbDrawableT, gc : XcbGcontextT, width : Uint16T, height : Uint16T, dst_x : Int16T, dst_y : Int16T, left_pad : Uint8T, depth : Uint8T, data_len : Uint32T, data : Uint8T*) : XcbVoidCookieT
  fun xcb_put_image_data(r : XcbPutImageRequestT*) : Uint8T*
  fun xcb_put_image_data_end(r : XcbPutImageRequestT*) : XcbGenericIteratorT
  fun xcb_put_image_data_length(r : XcbPutImageRequestT*) : LibC::Int
  fun xcb_put_image_sizeof(_buffer : Void*, data_len : Uint32T) : LibC::Int
  # Returns A cookie
  fun xcb_query_best_size(c : XcbConnectionT, _class : Uint8T, drawable : XcbDrawableT, width : Uint16T, height : Uint16T) : XcbQueryBestSizeCookieT
  # Return the reply
  fun xcb_query_best_size_reply(c : XcbConnectionT, cookie : XcbQueryBestSizeCookieT, e : XcbGenericErrorT**) : XcbQueryBestSizeReplyT*
  # Returns A cookie
  fun xcb_query_best_size_unchecked(c : XcbConnectionT, _class : Uint8T, drawable : XcbDrawableT, width : Uint16T, height : Uint16T) : XcbQueryBestSizeCookieT
  # Returns A cookie
  fun xcb_query_colors(c : XcbConnectionT, cmap : XcbColormapT, pixels_len : Uint32T, pixels : Uint32T*) : XcbQueryColorsCookieT
  fun xcb_query_colors_colors(r : XcbQueryColorsReplyT*) : XcbRgbT*
  fun xcb_query_colors_colors_iterator(r : XcbQueryColorsReplyT*) : XcbRgbIteratorT
  fun xcb_query_colors_colors_length(r : XcbQueryColorsReplyT*) : LibC::Int
  # Return the reply
  fun xcb_query_colors_reply(c : XcbConnectionT, cookie : XcbQueryColorsCookieT, e : XcbGenericErrorT**) : XcbQueryColorsReplyT*
  fun xcb_query_colors_sizeof(_buffer : Void*, pixels_len : Uint32T) : LibC::Int
  # Returns A cookie
  fun xcb_query_colors_unchecked(c : XcbConnectionT, cmap : XcbColormapT, pixels_len : Uint32T, pixels : Uint32T*) : XcbQueryColorsCookieT
  # check if extension is present
  fun xcb_query_extension(c : XcbConnectionT, name_len : Uint16T, name : LibC::Char*) : XcbQueryExtensionCookieT
  # Return the reply
  fun xcb_query_extension_reply(c : XcbConnectionT, cookie : XcbQueryExtensionCookieT, e : XcbGenericErrorT**) : XcbQueryExtensionReplyT*
  fun xcb_query_extension_sizeof(_buffer : Void*) : LibC::Int
  # check if extension is present
  fun xcb_query_extension_unchecked(c : XcbConnectionT, name_len : Uint16T, name : LibC::Char*) : XcbQueryExtensionCookieT
  # query font metrics
  fun xcb_query_font(c : XcbConnectionT, font : XcbFontableT) : XcbQueryFontCookieT
  fun xcb_query_font_char_infos(r : XcbQueryFontReplyT*) : XcbCharinfoT*
  fun xcb_query_font_char_infos_iterator(r : XcbQueryFontReplyT*) : XcbCharinfoIteratorT
  fun xcb_query_font_char_infos_length(r : XcbQueryFontReplyT*) : LibC::Int
  fun xcb_query_font_properties(r : XcbQueryFontReplyT*) : XcbFontpropT*
  fun xcb_query_font_properties_iterator(r : XcbQueryFontReplyT*) : XcbFontpropIteratorT
  fun xcb_query_font_properties_length(r : XcbQueryFontReplyT*) : LibC::Int
  # Return the reply
  fun xcb_query_font_reply(c : XcbConnectionT, cookie : XcbQueryFontCookieT, e : XcbGenericErrorT**) : XcbQueryFontReplyT*
  fun xcb_query_font_sizeof(_buffer : Void*) : LibC::Int
  # query font metrics
  fun xcb_query_font_unchecked(c : XcbConnectionT, font : XcbFontableT) : XcbQueryFontCookieT
  # Returns A cookie
  fun xcb_query_keymap(c : XcbConnectionT) : XcbQueryKeymapCookieT
  # Return the reply
  fun xcb_query_keymap_reply(c : XcbConnectionT, cookie : XcbQueryKeymapCookieT, e : XcbGenericErrorT**) : XcbQueryKeymapReplyT*
  # Returns A cookie
  fun xcb_query_keymap_unchecked(c : XcbConnectionT) : XcbQueryKeymapCookieT
  # get pointer coordinates
  fun xcb_query_pointer(c : XcbConnectionT, window : XcbWindowT) : XcbQueryPointerCookieT
  # Return the reply
  fun xcb_query_pointer_reply(c : XcbConnectionT, cookie : XcbQueryPointerCookieT, e : XcbGenericErrorT**) : XcbQueryPointerReplyT*
  # get pointer coordinates
  fun xcb_query_pointer_unchecked(c : XcbConnectionT, window : XcbWindowT) : XcbQueryPointerCookieT
  # get text extents
  fun xcb_query_text_extents(c : XcbConnectionT, font : XcbFontableT, string_len : Uint32T, string : XcbChar2bT*) : XcbQueryTextExtentsCookieT
  # Return the reply
  fun xcb_query_text_extents_reply(c : XcbConnectionT, cookie : XcbQueryTextExtentsCookieT, e : XcbGenericErrorT**) : XcbQueryTextExtentsReplyT*
  fun xcb_query_text_extents_sizeof(_buffer : Void*, string_len : Uint32T) : LibC::Int
  # get text extents
  fun xcb_query_text_extents_unchecked(c : XcbConnectionT, font : XcbFontableT, string_len : Uint32T, string : XcbChar2bT*) : XcbQueryTextExtentsCookieT
  # query the window tree
  fun xcb_query_tree(c : XcbConnectionT, window : XcbWindowT) : XcbQueryTreeCookieT
  fun xcb_query_tree_children(r : XcbQueryTreeReplyT*) : XcbWindowT*
  fun xcb_query_tree_children_end(r : XcbQueryTreeReplyT*) : XcbGenericIteratorT
  fun xcb_query_tree_children_length(r : XcbQueryTreeReplyT*) : LibC::Int
  # Return the reply
  fun xcb_query_tree_reply(c : XcbConnectionT, cookie : XcbQueryTreeCookieT, e : XcbGenericErrorT**) : XcbQueryTreeReplyT*
  fun xcb_query_tree_sizeof(_buffer : Void*) : LibC::Int
  # query the window tree
  fun xcb_query_tree_unchecked(c : XcbConnectionT, window : XcbWindowT) : XcbQueryTreeCookieT
  # Returns A cookie
  fun xcb_recolor_cursor(c : XcbConnectionT, cursor : XcbCursorT, fore_red : Uint16T, fore_green : Uint16T, fore_blue : Uint16T, back_red : Uint16T, back_green : Uint16T, back_blue : Uint16T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_recolor_cursor_checked(c : XcbConnectionT, cursor : XcbCursorT, fore_red : Uint16T, fore_green : Uint16T, fore_blue : Uint16T, back_red : Uint16T, back_green : Uint16T, back_blue : Uint16T) : XcbVoidCookieT
  # Return the iterator pointing to the last element
  fun xcb_rectangle_end(i : XcbRectangleIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_rectangle_next(i : XcbRectangleIteratorT*)
  fun xcb_refresh_keyboard_mapping(syms : XcbKeySymbolsT, event : XcbMappingNotifyEventT*) : LibC::Int
  # Listen for a special event
  fun xcb_register_for_special_xge(c : XcbConnectionT, ext : XcbExtensionT*, eid : Uint32T, stamp : Uint32T*) : XcbSpecialEventT
  fun xcb_render_add_glyphs(c : XcbConnectionT, glyphset : XcbRenderGlyphsetT, glyphs_len : Uint32T, glyphids : Uint32T*, glyphs : XcbRenderGlyphinfoT*, data_len : Uint32T, data : Uint8T*) : XcbVoidCookieT
  fun xcb_render_add_glyphs_checked(c : XcbConnectionT, glyphset : XcbRenderGlyphsetT, glyphs_len : Uint32T, glyphids : Uint32T*, glyphs : XcbRenderGlyphinfoT*, data_len : Uint32T, data : Uint8T*) : XcbVoidCookieT
  fun xcb_render_add_glyphs_data(r : XcbRenderAddGlyphsRequestT*) : Uint8T*
  fun xcb_render_add_glyphs_data_end(r : XcbRenderAddGlyphsRequestT*) : XcbGenericIteratorT
  fun xcb_render_add_glyphs_data_length(r : XcbRenderAddGlyphsRequestT*) : LibC::Int
  fun xcb_render_add_glyphs_glyphids(r : XcbRenderAddGlyphsRequestT*) : Uint32T*
  fun xcb_render_add_glyphs_glyphids_end(r : XcbRenderAddGlyphsRequestT*) : XcbGenericIteratorT
  fun xcb_render_add_glyphs_glyphids_length(r : XcbRenderAddGlyphsRequestT*) : LibC::Int
  fun xcb_render_add_glyphs_glyphs(r : XcbRenderAddGlyphsRequestT*) : XcbRenderGlyphinfoT*
  fun xcb_render_add_glyphs_glyphs_iterator(r : XcbRenderAddGlyphsRequestT*) : XcbRenderGlyphinfoIteratorT
  fun xcb_render_add_glyphs_glyphs_length(r : XcbRenderAddGlyphsRequestT*) : LibC::Int
  fun xcb_render_add_glyphs_sizeof(_buffer : Void*, data_len : Uint32T) : LibC::Int
  fun xcb_render_add_traps(c : XcbConnectionT, picture : XcbRenderPictureT, x_off : Int16T, y_off : Int16T, traps_len : Uint32T, traps : XcbRenderTrapT*) : XcbVoidCookieT
  fun xcb_render_add_traps_checked(c : XcbConnectionT, picture : XcbRenderPictureT, x_off : Int16T, y_off : Int16T, traps_len : Uint32T, traps : XcbRenderTrapT*) : XcbVoidCookieT
  fun xcb_render_add_traps_sizeof(_buffer : Void*, traps_len : Uint32T) : LibC::Int
  fun xcb_render_add_traps_traps(r : XcbRenderAddTrapsRequestT*) : XcbRenderTrapT*
  fun xcb_render_add_traps_traps_iterator(r : XcbRenderAddTrapsRequestT*) : XcbRenderTrapIteratorT
  fun xcb_render_add_traps_traps_length(r : XcbRenderAddTrapsRequestT*) : LibC::Int
  fun xcb_render_animcursorelt_end(i : XcbRenderAnimcursoreltIteratorT) : XcbGenericIteratorT
  fun xcb_render_animcursorelt_next(i : XcbRenderAnimcursoreltIteratorT*)
  fun xcb_render_change_picture(c : XcbConnectionT, picture : XcbRenderPictureT, value_mask : Uint32T, value_list : Void*) : XcbVoidCookieT
  fun xcb_render_change_picture_aux(c : XcbConnectionT, picture : XcbRenderPictureT, value_mask : Uint32T, value_list : XcbRenderChangePictureValueListT*) : XcbVoidCookieT
  fun xcb_render_change_picture_aux_checked(c : XcbConnectionT, picture : XcbRenderPictureT, value_mask : Uint32T, value_list : XcbRenderChangePictureValueListT*) : XcbVoidCookieT
  fun xcb_render_change_picture_checked(c : XcbConnectionT, picture : XcbRenderPictureT, value_mask : Uint32T, value_list : Void*) : XcbVoidCookieT
  fun xcb_render_change_picture_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_render_change_picture_value_list(r : XcbRenderChangePictureRequestT*) : Void*
  fun xcb_render_change_picture_value_list_serialize(_buffer : Void**, value_mask : Uint32T, _aux : XcbRenderChangePictureValueListT*) : LibC::Int
  fun xcb_render_change_picture_value_list_sizeof(_buffer : Void*, value_mask : Uint32T) : LibC::Int
  fun xcb_render_change_picture_value_list_unpack(_buffer : Void*, value_mask : Uint32T, _aux : XcbRenderChangePictureValueListT*) : LibC::Int
  fun xcb_render_color_end(i : XcbRenderColorIteratorT) : XcbGenericIteratorT
  fun xcb_render_color_next(i : XcbRenderColorIteratorT*)
  fun xcb_render_composite(c : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, mask : XcbRenderPictureT, dst : XcbRenderPictureT, src_x : Int16T, src_y : Int16T, mask_x : Int16T, mask_y : Int16T, dst_x : Int16T, dst_y : Int16T, width : Uint16T, height : Uint16T) : XcbVoidCookieT
  fun xcb_render_composite_checked(c : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, mask : XcbRenderPictureT, dst : XcbRenderPictureT, src_x : Int16T, src_y : Int16T, mask_x : Int16T, mask_y : Int16T, dst_x : Int16T, dst_y : Int16T, width : Uint16T, height : Uint16T) : XcbVoidCookieT
  fun xcb_render_composite_glyphs_16(c : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, dst : XcbRenderPictureT, mask_format : XcbRenderPictformatT, glyphset : XcbRenderGlyphsetT, src_x : Int16T, src_y : Int16T, glyphcmds_len : Uint32T, glyphcmds : Uint8T*) : XcbVoidCookieT
  fun xcb_render_composite_glyphs_16_checked(c : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, dst : XcbRenderPictureT, mask_format : XcbRenderPictformatT, glyphset : XcbRenderGlyphsetT, src_x : Int16T, src_y : Int16T, glyphcmds_len : Uint32T, glyphcmds : Uint8T*) : XcbVoidCookieT
  fun xcb_render_composite_glyphs_16_glyphcmds(r : XcbRenderCompositeGlyphs16RequestT*) : Uint8T*
  fun xcb_render_composite_glyphs_16_glyphcmds_end(r : XcbRenderCompositeGlyphs16RequestT*) : XcbGenericIteratorT
  fun xcb_render_composite_glyphs_16_glyphcmds_length(r : XcbRenderCompositeGlyphs16RequestT*) : LibC::Int
  fun xcb_render_composite_glyphs_16_sizeof(_buffer : Void*, glyphcmds_len : Uint32T) : LibC::Int
  fun xcb_render_composite_glyphs_32(c : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, dst : XcbRenderPictureT, mask_format : XcbRenderPictformatT, glyphset : XcbRenderGlyphsetT, src_x : Int16T, src_y : Int16T, glyphcmds_len : Uint32T, glyphcmds : Uint8T*) : XcbVoidCookieT
  fun xcb_render_composite_glyphs_32_checked(c : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, dst : XcbRenderPictureT, mask_format : XcbRenderPictformatT, glyphset : XcbRenderGlyphsetT, src_x : Int16T, src_y : Int16T, glyphcmds_len : Uint32T, glyphcmds : Uint8T*) : XcbVoidCookieT
  fun xcb_render_composite_glyphs_32_glyphcmds(r : XcbRenderCompositeGlyphs32RequestT*) : Uint8T*
  fun xcb_render_composite_glyphs_32_glyphcmds_end(r : XcbRenderCompositeGlyphs32RequestT*) : XcbGenericIteratorT
  fun xcb_render_composite_glyphs_32_glyphcmds_length(r : XcbRenderCompositeGlyphs32RequestT*) : LibC::Int
  fun xcb_render_composite_glyphs_32_sizeof(_buffer : Void*, glyphcmds_len : Uint32T) : LibC::Int
  fun xcb_render_composite_glyphs_8(c : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, dst : XcbRenderPictureT, mask_format : XcbRenderPictformatT, glyphset : XcbRenderGlyphsetT, src_x : Int16T, src_y : Int16T, glyphcmds_len : Uint32T, glyphcmds : Uint8T*) : XcbVoidCookieT
  fun xcb_render_composite_glyphs_8_checked(c : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, dst : XcbRenderPictureT, mask_format : XcbRenderPictformatT, glyphset : XcbRenderGlyphsetT, src_x : Int16T, src_y : Int16T, glyphcmds_len : Uint32T, glyphcmds : Uint8T*) : XcbVoidCookieT
  fun xcb_render_composite_glyphs_8_glyphcmds(r : XcbRenderCompositeGlyphs8RequestT*) : Uint8T*
  fun xcb_render_composite_glyphs_8_glyphcmds_end(r : XcbRenderCompositeGlyphs8RequestT*) : XcbGenericIteratorT
  fun xcb_render_composite_glyphs_8_glyphcmds_length(r : XcbRenderCompositeGlyphs8RequestT*) : LibC::Int
  fun xcb_render_composite_glyphs_8_sizeof(_buffer : Void*, glyphcmds_len : Uint32T) : LibC::Int
  fun xcb_render_create_anim_cursor(c : XcbConnectionT, cid : XcbCursorT, cursors_len : Uint32T, cursors : XcbRenderAnimcursoreltT*) : XcbVoidCookieT
  fun xcb_render_create_anim_cursor_checked(c : XcbConnectionT, cid : XcbCursorT, cursors_len : Uint32T, cursors : XcbRenderAnimcursoreltT*) : XcbVoidCookieT
  fun xcb_render_create_anim_cursor_cursors(r : XcbRenderCreateAnimCursorRequestT*) : XcbRenderAnimcursoreltT*
  fun xcb_render_create_anim_cursor_cursors_iterator(r : XcbRenderCreateAnimCursorRequestT*) : XcbRenderAnimcursoreltIteratorT
  fun xcb_render_create_anim_cursor_cursors_length(r : XcbRenderCreateAnimCursorRequestT*) : LibC::Int
  fun xcb_render_create_anim_cursor_sizeof(_buffer : Void*, cursors_len : Uint32T) : LibC::Int
  fun xcb_render_create_conical_gradient(c : XcbConnectionT, picture : XcbRenderPictureT, center : XcbRenderPointfixT, angle : XcbRenderFixedT, num_stops : Uint32T, stops : XcbRenderFixedT*, colors : XcbRenderColorT*) : XcbVoidCookieT
  fun xcb_render_create_conical_gradient_checked(c : XcbConnectionT, picture : XcbRenderPictureT, center : XcbRenderPointfixT, angle : XcbRenderFixedT, num_stops : Uint32T, stops : XcbRenderFixedT*, colors : XcbRenderColorT*) : XcbVoidCookieT
  fun xcb_render_create_conical_gradient_colors(r : XcbRenderCreateConicalGradientRequestT*) : XcbRenderColorT*
  fun xcb_render_create_conical_gradient_colors_iterator(r : XcbRenderCreateConicalGradientRequestT*) : XcbRenderColorIteratorT
  fun xcb_render_create_conical_gradient_colors_length(r : XcbRenderCreateConicalGradientRequestT*) : LibC::Int
  fun xcb_render_create_conical_gradient_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_render_create_conical_gradient_stops(r : XcbRenderCreateConicalGradientRequestT*) : XcbRenderFixedT*
  fun xcb_render_create_conical_gradient_stops_end(r : XcbRenderCreateConicalGradientRequestT*) : XcbGenericIteratorT
  fun xcb_render_create_conical_gradient_stops_length(r : XcbRenderCreateConicalGradientRequestT*) : LibC::Int
  fun xcb_render_create_cursor(c : XcbConnectionT, cid : XcbCursorT, source : XcbRenderPictureT, x : Uint16T, y : Uint16T) : XcbVoidCookieT
  fun xcb_render_create_cursor_checked(c : XcbConnectionT, cid : XcbCursorT, source : XcbRenderPictureT, x : Uint16T, y : Uint16T) : XcbVoidCookieT
  fun xcb_render_create_glyph_set(c : XcbConnectionT, gsid : XcbRenderGlyphsetT, format : XcbRenderPictformatT) : XcbVoidCookieT
  fun xcb_render_create_glyph_set_checked(c : XcbConnectionT, gsid : XcbRenderGlyphsetT, format : XcbRenderPictformatT) : XcbVoidCookieT
  fun xcb_render_create_linear_gradient(c : XcbConnectionT, picture : XcbRenderPictureT, p1 : XcbRenderPointfixT, p2 : XcbRenderPointfixT, num_stops : Uint32T, stops : XcbRenderFixedT*, colors : XcbRenderColorT*) : XcbVoidCookieT
  fun xcb_render_create_linear_gradient_checked(c : XcbConnectionT, picture : XcbRenderPictureT, p1 : XcbRenderPointfixT, p2 : XcbRenderPointfixT, num_stops : Uint32T, stops : XcbRenderFixedT*, colors : XcbRenderColorT*) : XcbVoidCookieT
  fun xcb_render_create_linear_gradient_colors(r : XcbRenderCreateLinearGradientRequestT*) : XcbRenderColorT*
  fun xcb_render_create_linear_gradient_colors_iterator(r : XcbRenderCreateLinearGradientRequestT*) : XcbRenderColorIteratorT
  fun xcb_render_create_linear_gradient_colors_length(r : XcbRenderCreateLinearGradientRequestT*) : LibC::Int
  fun xcb_render_create_linear_gradient_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_render_create_linear_gradient_stops(r : XcbRenderCreateLinearGradientRequestT*) : XcbRenderFixedT*
  fun xcb_render_create_linear_gradient_stops_end(r : XcbRenderCreateLinearGradientRequestT*) : XcbGenericIteratorT
  fun xcb_render_create_linear_gradient_stops_length(r : XcbRenderCreateLinearGradientRequestT*) : LibC::Int
  fun xcb_render_create_picture(c : XcbConnectionT, pid : XcbRenderPictureT, drawable : XcbDrawableT, format : XcbRenderPictformatT, value_mask : Uint32T, value_list : Void*) : XcbVoidCookieT
  fun xcb_render_create_picture_aux(c : XcbConnectionT, pid : XcbRenderPictureT, drawable : XcbDrawableT, format : XcbRenderPictformatT, value_mask : Uint32T, value_list : XcbRenderCreatePictureValueListT*) : XcbVoidCookieT
  fun xcb_render_create_picture_aux_checked(c : XcbConnectionT, pid : XcbRenderPictureT, drawable : XcbDrawableT, format : XcbRenderPictformatT, value_mask : Uint32T, value_list : XcbRenderCreatePictureValueListT*) : XcbVoidCookieT
  fun xcb_render_create_picture_checked(c : XcbConnectionT, pid : XcbRenderPictureT, drawable : XcbDrawableT, format : XcbRenderPictformatT, value_mask : Uint32T, value_list : Void*) : XcbVoidCookieT
  fun xcb_render_create_picture_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_render_create_picture_value_list(r : XcbRenderCreatePictureRequestT*) : Void*
  fun xcb_render_create_picture_value_list_serialize(_buffer : Void**, value_mask : Uint32T, _aux : XcbRenderCreatePictureValueListT*) : LibC::Int
  fun xcb_render_create_picture_value_list_sizeof(_buffer : Void*, value_mask : Uint32T) : LibC::Int
  fun xcb_render_create_picture_value_list_unpack(_buffer : Void*, value_mask : Uint32T, _aux : XcbRenderCreatePictureValueListT*) : LibC::Int
  fun xcb_render_create_radial_gradient(c : XcbConnectionT, picture : XcbRenderPictureT, inner : XcbRenderPointfixT, outer : XcbRenderPointfixT, inner_radius : XcbRenderFixedT, outer_radius : XcbRenderFixedT, num_stops : Uint32T, stops : XcbRenderFixedT*, colors : XcbRenderColorT*) : XcbVoidCookieT
  fun xcb_render_create_radial_gradient_checked(c : XcbConnectionT, picture : XcbRenderPictureT, inner : XcbRenderPointfixT, outer : XcbRenderPointfixT, inner_radius : XcbRenderFixedT, outer_radius : XcbRenderFixedT, num_stops : Uint32T, stops : XcbRenderFixedT*, colors : XcbRenderColorT*) : XcbVoidCookieT
  fun xcb_render_create_radial_gradient_colors(r : XcbRenderCreateRadialGradientRequestT*) : XcbRenderColorT*
  fun xcb_render_create_radial_gradient_colors_iterator(r : XcbRenderCreateRadialGradientRequestT*) : XcbRenderColorIteratorT
  fun xcb_render_create_radial_gradient_colors_length(r : XcbRenderCreateRadialGradientRequestT*) : LibC::Int
  fun xcb_render_create_radial_gradient_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_render_create_radial_gradient_stops(r : XcbRenderCreateRadialGradientRequestT*) : XcbRenderFixedT*
  fun xcb_render_create_radial_gradient_stops_end(r : XcbRenderCreateRadialGradientRequestT*) : XcbGenericIteratorT
  fun xcb_render_create_radial_gradient_stops_length(r : XcbRenderCreateRadialGradientRequestT*) : LibC::Int
  fun xcb_render_create_solid_fill(c : XcbConnectionT, picture : XcbRenderPictureT, color : XcbRenderColorT) : XcbVoidCookieT
  fun xcb_render_create_solid_fill_checked(c : XcbConnectionT, picture : XcbRenderPictureT, color : XcbRenderColorT) : XcbVoidCookieT
  fun xcb_render_directformat_end(i : XcbRenderDirectformatIteratorT) : XcbGenericIteratorT
  fun xcb_render_directformat_next(i : XcbRenderDirectformatIteratorT*)
  fun xcb_render_fill_rectangles(c : XcbConnectionT, op : Uint8T, dst : XcbRenderPictureT, color : XcbRenderColorT, rects_len : Uint32T, rects : XcbRectangleT*) : XcbVoidCookieT
  fun xcb_render_fill_rectangles_checked(c : XcbConnectionT, op : Uint8T, dst : XcbRenderPictureT, color : XcbRenderColorT, rects_len : Uint32T, rects : XcbRectangleT*) : XcbVoidCookieT
  fun xcb_render_fill_rectangles_rects(r : XcbRenderFillRectanglesRequestT*) : XcbRectangleT*
  fun xcb_render_fill_rectangles_rects_iterator(r : XcbRenderFillRectanglesRequestT*) : XcbRectangleIteratorT
  fun xcb_render_fill_rectangles_rects_length(r : XcbRenderFillRectanglesRequestT*) : LibC::Int
  fun xcb_render_fill_rectangles_sizeof(_buffer : Void*, rects_len : Uint32T) : LibC::Int
  fun xcb_render_fixed_end(i : XcbRenderFixedIteratorT) : XcbGenericIteratorT
  fun xcb_render_fixed_next(i : XcbRenderFixedIteratorT*)
  fun xcb_render_free_glyph_set(c : XcbConnectionT, glyphset : XcbRenderGlyphsetT) : XcbVoidCookieT
  fun xcb_render_free_glyph_set_checked(c : XcbConnectionT, glyphset : XcbRenderGlyphsetT) : XcbVoidCookieT
  fun xcb_render_free_glyphs(c : XcbConnectionT, glyphset : XcbRenderGlyphsetT, glyphs_len : Uint32T, glyphs : XcbRenderGlyphT*) : XcbVoidCookieT
  fun xcb_render_free_glyphs_checked(c : XcbConnectionT, glyphset : XcbRenderGlyphsetT, glyphs_len : Uint32T, glyphs : XcbRenderGlyphT*) : XcbVoidCookieT
  fun xcb_render_free_glyphs_glyphs(r : XcbRenderFreeGlyphsRequestT*) : XcbRenderGlyphT*
  fun xcb_render_free_glyphs_glyphs_end(r : XcbRenderFreeGlyphsRequestT*) : XcbGenericIteratorT
  fun xcb_render_free_glyphs_glyphs_length(r : XcbRenderFreeGlyphsRequestT*) : LibC::Int
  fun xcb_render_free_glyphs_sizeof(_buffer : Void*, glyphs_len : Uint32T) : LibC::Int
  fun xcb_render_free_picture(c : XcbConnectionT, picture : XcbRenderPictureT) : XcbVoidCookieT
  fun xcb_render_free_picture_checked(c : XcbConnectionT, picture : XcbRenderPictureT) : XcbVoidCookieT
  fun xcb_render_glyph_end(i : XcbRenderGlyphIteratorT) : XcbGenericIteratorT
  fun xcb_render_glyph_next(i : XcbRenderGlyphIteratorT*)
  fun xcb_render_glyphinfo_end(i : XcbRenderGlyphinfoIteratorT) : XcbGenericIteratorT
  fun xcb_render_glyphinfo_next(i : XcbRenderGlyphinfoIteratorT*)
  fun xcb_render_glyphset_end(i : XcbRenderGlyphsetIteratorT) : XcbGenericIteratorT
  fun xcb_render_glyphset_next(i : XcbRenderGlyphsetIteratorT*)
  fun xcb_render_indexvalue_end(i : XcbRenderIndexvalueIteratorT) : XcbGenericIteratorT
  fun xcb_render_indexvalue_next(i : XcbRenderIndexvalueIteratorT*)
  fun xcb_render_linefix_end(i : XcbRenderLinefixIteratorT) : XcbGenericIteratorT
  fun xcb_render_linefix_next(i : XcbRenderLinefixIteratorT*)
  fun xcb_render_pictdepth_end(i : XcbRenderPictdepthIteratorT) : XcbGenericIteratorT
  fun xcb_render_pictdepth_next(i : XcbRenderPictdepthIteratorT*)
  fun xcb_render_pictdepth_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_render_pictdepth_visuals(r : XcbRenderPictdepthT*) : XcbRenderPictvisualT*
  fun xcb_render_pictdepth_visuals_iterator(r : XcbRenderPictdepthT*) : XcbRenderPictvisualIteratorT
  fun xcb_render_pictdepth_visuals_length(r : XcbRenderPictdepthT*) : LibC::Int
  fun xcb_render_pictformat_end(i : XcbRenderPictformatIteratorT) : XcbGenericIteratorT
  fun xcb_render_pictformat_next(i : XcbRenderPictformatIteratorT*)
  fun xcb_render_pictforminfo_end(i : XcbRenderPictforminfoIteratorT) : XcbGenericIteratorT
  fun xcb_render_pictforminfo_next(i : XcbRenderPictforminfoIteratorT*)
  fun xcb_render_pictscreen_depths_iterator(r : XcbRenderPictscreenT*) : XcbRenderPictdepthIteratorT
  fun xcb_render_pictscreen_depths_length(r : XcbRenderPictscreenT*) : LibC::Int
  fun xcb_render_pictscreen_end(i : XcbRenderPictscreenIteratorT) : XcbGenericIteratorT
  fun xcb_render_pictscreen_next(i : XcbRenderPictscreenIteratorT*)
  fun xcb_render_pictscreen_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_render_picture_end(i : XcbRenderPictureIteratorT) : XcbGenericIteratorT
  fun xcb_render_picture_next(i : XcbRenderPictureIteratorT*)
  fun xcb_render_pictvisual_end(i : XcbRenderPictvisualIteratorT) : XcbGenericIteratorT
  fun xcb_render_pictvisual_next(i : XcbRenderPictvisualIteratorT*)
  fun xcb_render_pointfix_end(i : XcbRenderPointfixIteratorT) : XcbGenericIteratorT
  fun xcb_render_pointfix_next(i : XcbRenderPointfixIteratorT*)
  fun xcb_render_query_filters(c : XcbConnectionT, drawable : XcbDrawableT) : XcbRenderQueryFiltersCookieT
  fun xcb_render_query_filters_aliases(r : XcbRenderQueryFiltersReplyT*) : Uint16T*
  fun xcb_render_query_filters_aliases_end(r : XcbRenderQueryFiltersReplyT*) : XcbGenericIteratorT
  fun xcb_render_query_filters_aliases_length(r : XcbRenderQueryFiltersReplyT*) : LibC::Int
  fun xcb_render_query_filters_filters_iterator(r : XcbRenderQueryFiltersReplyT*) : XcbStrIteratorT
  fun xcb_render_query_filters_filters_length(r : XcbRenderQueryFiltersReplyT*) : LibC::Int
  fun xcb_render_query_filters_reply(c : XcbConnectionT, cookie : XcbRenderQueryFiltersCookieT, e : XcbGenericErrorT**) : XcbRenderQueryFiltersReplyT*
  fun xcb_render_query_filters_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_render_query_filters_unchecked(c : XcbConnectionT, drawable : XcbDrawableT) : XcbRenderQueryFiltersCookieT
  fun xcb_render_query_pict_formats(c : XcbConnectionT) : XcbRenderQueryPictFormatsCookieT
  fun xcb_render_query_pict_formats_formats(r : XcbRenderQueryPictFormatsReplyT*) : XcbRenderPictforminfoT*
  fun xcb_render_query_pict_formats_formats_iterator(r : XcbRenderQueryPictFormatsReplyT*) : XcbRenderPictforminfoIteratorT
  fun xcb_render_query_pict_formats_formats_length(r : XcbRenderQueryPictFormatsReplyT*) : LibC::Int
  fun xcb_render_query_pict_formats_reply(c : XcbConnectionT, cookie : XcbRenderQueryPictFormatsCookieT, e : XcbGenericErrorT**) : XcbRenderQueryPictFormatsReplyT*
  fun xcb_render_query_pict_formats_screens_iterator(r : XcbRenderQueryPictFormatsReplyT*) : XcbRenderPictscreenIteratorT
  fun xcb_render_query_pict_formats_screens_length(r : XcbRenderQueryPictFormatsReplyT*) : LibC::Int
  fun xcb_render_query_pict_formats_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_render_query_pict_formats_subpixels(r : XcbRenderQueryPictFormatsReplyT*) : Uint32T*
  fun xcb_render_query_pict_formats_subpixels_end(r : XcbRenderQueryPictFormatsReplyT*) : XcbGenericIteratorT
  fun xcb_render_query_pict_formats_subpixels_length(r : XcbRenderQueryPictFormatsReplyT*) : LibC::Int
  fun xcb_render_query_pict_formats_unchecked(c : XcbConnectionT) : XcbRenderQueryPictFormatsCookieT
  fun xcb_render_query_pict_index_values(c : XcbConnectionT, format : XcbRenderPictformatT) : XcbRenderQueryPictIndexValuesCookieT
  fun xcb_render_query_pict_index_values_reply(c : XcbConnectionT, cookie : XcbRenderQueryPictIndexValuesCookieT, e : XcbGenericErrorT**) : XcbRenderQueryPictIndexValuesReplyT*
  fun xcb_render_query_pict_index_values_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_render_query_pict_index_values_unchecked(c : XcbConnectionT, format : XcbRenderPictformatT) : XcbRenderQueryPictIndexValuesCookieT
  fun xcb_render_query_pict_index_values_values(r : XcbRenderQueryPictIndexValuesReplyT*) : XcbRenderIndexvalueT*
  fun xcb_render_query_pict_index_values_values_iterator(r : XcbRenderQueryPictIndexValuesReplyT*) : XcbRenderIndexvalueIteratorT
  fun xcb_render_query_pict_index_values_values_length(r : XcbRenderQueryPictIndexValuesReplyT*) : LibC::Int
  fun xcb_render_query_version(c : XcbConnectionT, client_major_version : Uint32T, client_minor_version : Uint32T) : XcbRenderQueryVersionCookieT
  fun xcb_render_query_version_reply(c : XcbConnectionT, cookie : XcbRenderQueryVersionCookieT, e : XcbGenericErrorT**) : XcbRenderQueryVersionReplyT*
  fun xcb_render_query_version_unchecked(c : XcbConnectionT, client_major_version : Uint32T, client_minor_version : Uint32T) : XcbRenderQueryVersionCookieT
  fun xcb_render_reference_glyph_set(c : XcbConnectionT, gsid : XcbRenderGlyphsetT, existing : XcbRenderGlyphsetT) : XcbVoidCookieT
  fun xcb_render_reference_glyph_set_checked(c : XcbConnectionT, gsid : XcbRenderGlyphsetT, existing : XcbRenderGlyphsetT) : XcbVoidCookieT
  fun xcb_render_set_picture_clip_rectangles(c : XcbConnectionT, picture : XcbRenderPictureT, clip_x_origin : Int16T, clip_y_origin : Int16T, rectangles_len : Uint32T, rectangles : XcbRectangleT*) : XcbVoidCookieT
  fun xcb_render_set_picture_clip_rectangles_checked(c : XcbConnectionT, picture : XcbRenderPictureT, clip_x_origin : Int16T, clip_y_origin : Int16T, rectangles_len : Uint32T, rectangles : XcbRectangleT*) : XcbVoidCookieT
  fun xcb_render_set_picture_clip_rectangles_rectangles(r : XcbRenderSetPictureClipRectanglesRequestT*) : XcbRectangleT*
  fun xcb_render_set_picture_clip_rectangles_rectangles_iterator(r : XcbRenderSetPictureClipRectanglesRequestT*) : XcbRectangleIteratorT
  fun xcb_render_set_picture_clip_rectangles_rectangles_length(r : XcbRenderSetPictureClipRectanglesRequestT*) : LibC::Int
  fun xcb_render_set_picture_clip_rectangles_sizeof(_buffer : Void*, rectangles_len : Uint32T) : LibC::Int
  fun xcb_render_set_picture_filter(c : XcbConnectionT, picture : XcbRenderPictureT, filter_len : Uint16T, filter : LibC::Char*, values_len : Uint32T, values : XcbRenderFixedT*) : XcbVoidCookieT
  fun xcb_render_set_picture_filter_checked(c : XcbConnectionT, picture : XcbRenderPictureT, filter_len : Uint16T, filter : LibC::Char*, values_len : Uint32T, values : XcbRenderFixedT*) : XcbVoidCookieT
  fun xcb_render_set_picture_filter_filter(r : XcbRenderSetPictureFilterRequestT*) : LibC::Char*
  fun xcb_render_set_picture_filter_filter_end(r : XcbRenderSetPictureFilterRequestT*) : XcbGenericIteratorT
  fun xcb_render_set_picture_filter_filter_length(r : XcbRenderSetPictureFilterRequestT*) : LibC::Int
  fun xcb_render_set_picture_filter_sizeof(_buffer : Void*, values_len : Uint32T) : LibC::Int
  fun xcb_render_set_picture_filter_values(r : XcbRenderSetPictureFilterRequestT*) : XcbRenderFixedT*
  fun xcb_render_set_picture_filter_values_end(r : XcbRenderSetPictureFilterRequestT*) : XcbGenericIteratorT
  fun xcb_render_set_picture_filter_values_length(r : XcbRenderSetPictureFilterRequestT*) : LibC::Int
  fun xcb_render_set_picture_transform(c : XcbConnectionT, picture : XcbRenderPictureT, transform : XcbRenderTransformT) : XcbVoidCookieT
  fun xcb_render_set_picture_transform_checked(c : XcbConnectionT, picture : XcbRenderPictureT, transform : XcbRenderTransformT) : XcbVoidCookieT
  fun xcb_render_spanfix_end(i : XcbRenderSpanfixIteratorT) : XcbGenericIteratorT
  fun xcb_render_spanfix_next(i : XcbRenderSpanfixIteratorT*)
  fun xcb_render_transform_end(i : XcbRenderTransformIteratorT) : XcbGenericIteratorT
  fun xcb_render_transform_next(i : XcbRenderTransformIteratorT*)
  fun xcb_render_trap_end(i : XcbRenderTrapIteratorT) : XcbGenericIteratorT
  fun xcb_render_trap_next(i : XcbRenderTrapIteratorT*)
  fun xcb_render_trapezoid_end(i : XcbRenderTrapezoidIteratorT) : XcbGenericIteratorT
  fun xcb_render_trapezoid_next(i : XcbRenderTrapezoidIteratorT*)
  fun xcb_render_trapezoids(c : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, dst : XcbRenderPictureT, mask_format : XcbRenderPictformatT, src_x : Int16T, src_y : Int16T, traps_len : Uint32T, traps : XcbRenderTrapezoidT*) : XcbVoidCookieT
  fun xcb_render_trapezoids_checked(c : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, dst : XcbRenderPictureT, mask_format : XcbRenderPictformatT, src_x : Int16T, src_y : Int16T, traps_len : Uint32T, traps : XcbRenderTrapezoidT*) : XcbVoidCookieT
  fun xcb_render_trapezoids_sizeof(_buffer : Void*, traps_len : Uint32T) : LibC::Int
  fun xcb_render_trapezoids_traps(r : XcbRenderTrapezoidsRequestT*) : XcbRenderTrapezoidT*
  fun xcb_render_trapezoids_traps_iterator(r : XcbRenderTrapezoidsRequestT*) : XcbRenderTrapezoidIteratorT
  fun xcb_render_trapezoids_traps_length(r : XcbRenderTrapezoidsRequestT*) : LibC::Int
  fun xcb_render_tri_fan(c : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, dst : XcbRenderPictureT, mask_format : XcbRenderPictformatT, src_x : Int16T, src_y : Int16T, points_len : Uint32T, points : XcbRenderPointfixT*) : XcbVoidCookieT
  fun xcb_render_tri_fan_checked(c : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, dst : XcbRenderPictureT, mask_format : XcbRenderPictformatT, src_x : Int16T, src_y : Int16T, points_len : Uint32T, points : XcbRenderPointfixT*) : XcbVoidCookieT
  fun xcb_render_tri_fan_points(r : XcbRenderTriFanRequestT*) : XcbRenderPointfixT*
  fun xcb_render_tri_fan_points_iterator(r : XcbRenderTriFanRequestT*) : XcbRenderPointfixIteratorT
  fun xcb_render_tri_fan_points_length(r : XcbRenderTriFanRequestT*) : LibC::Int
  fun xcb_render_tri_fan_sizeof(_buffer : Void*, points_len : Uint32T) : LibC::Int
  fun xcb_render_tri_strip(c : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, dst : XcbRenderPictureT, mask_format : XcbRenderPictformatT, src_x : Int16T, src_y : Int16T, points_len : Uint32T, points : XcbRenderPointfixT*) : XcbVoidCookieT
  fun xcb_render_tri_strip_checked(c : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, dst : XcbRenderPictureT, mask_format : XcbRenderPictformatT, src_x : Int16T, src_y : Int16T, points_len : Uint32T, points : XcbRenderPointfixT*) : XcbVoidCookieT
  fun xcb_render_tri_strip_points(r : XcbRenderTriStripRequestT*) : XcbRenderPointfixT*
  fun xcb_render_tri_strip_points_iterator(r : XcbRenderTriStripRequestT*) : XcbRenderPointfixIteratorT
  fun xcb_render_tri_strip_points_length(r : XcbRenderTriStripRequestT*) : LibC::Int
  fun xcb_render_tri_strip_sizeof(_buffer : Void*, points_len : Uint32T) : LibC::Int
  fun xcb_render_triangle_end(i : XcbRenderTriangleIteratorT) : XcbGenericIteratorT
  fun xcb_render_triangle_next(i : XcbRenderTriangleIteratorT*)
  fun xcb_render_triangles(c : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, dst : XcbRenderPictureT, mask_format : XcbRenderPictformatT, src_x : Int16T, src_y : Int16T, triangles_len : Uint32T, triangles : XcbRenderTriangleT*) : XcbVoidCookieT
  fun xcb_render_triangles_checked(c : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, dst : XcbRenderPictureT, mask_format : XcbRenderPictformatT, src_x : Int16T, src_y : Int16T, triangles_len : Uint32T, triangles : XcbRenderTriangleT*) : XcbVoidCookieT
  fun xcb_render_triangles_sizeof(_buffer : Void*, triangles_len : Uint32T) : LibC::Int
  fun xcb_render_triangles_triangles(r : XcbRenderTrianglesRequestT*) : XcbRenderTriangleT*
  fun xcb_render_triangles_triangles_iterator(r : XcbRenderTrianglesRequestT*) : XcbRenderTriangleIteratorT
  fun xcb_render_triangles_triangles_length(r : XcbRenderTrianglesRequestT*) : LibC::Int
  fun xcb_render_util_change_glyphset(stream : XcbRenderUtilCompositeTextStreamT, glyphset : XcbRenderGlyphsetT)
  fun xcb_render_util_composite_text(xc : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, dst : XcbRenderPictureT, mask_format : XcbRenderPictformatT, src_x : Int16T, src_y : Int16T, stream : XcbRenderUtilCompositeTextStreamT) : XcbVoidCookieT
  fun xcb_render_util_composite_text_checked(xc : XcbConnectionT, op : Uint8T, src : XcbRenderPictureT, dst : XcbRenderPictureT, mask_format : XcbRenderPictformatT, src_x : Int16T, src_y : Int16T, stream : XcbRenderUtilCompositeTextStreamT) : XcbVoidCookieT
  fun xcb_render_util_composite_text_free(stream : XcbRenderUtilCompositeTextStreamT)
  fun xcb_render_util_composite_text_stream(initial_glyphset : XcbRenderGlyphsetT, total_glyphs : Uint32T, total_glyphset_changes : Uint32T) : XcbRenderUtilCompositeTextStreamT
  fun xcb_render_util_disconnect(c : XcbConnectionT) : LibC::Int
  fun xcb_render_util_find_format(formats : XcbRenderQueryPictFormatsReplyT*, mask : LibC::ULong, ptemplate : XcbRenderPictforminfoT*, count : LibC::Int) : XcbRenderPictforminfoT*
  fun xcb_render_util_find_standard_format(formats : XcbRenderQueryPictFormatsReplyT*, format : XcbPictStandardT) : XcbRenderPictforminfoT*
  fun xcb_render_util_find_visual_format(formats : XcbRenderQueryPictFormatsReplyT*, visual : XcbVisualidT) : XcbRenderPictvisualT*
  fun xcb_render_util_glyphs_16(stream : XcbRenderUtilCompositeTextStreamT, dx : Int16T, dy : Int16T, count : Uint32T, glyphs : Uint16T*)
  fun xcb_render_util_glyphs_32(stream : XcbRenderUtilCompositeTextStreamT, dx : Int16T, dy : Int16T, count : Uint32T, glyphs : Uint32T*)
  fun xcb_render_util_glyphs_8(stream : XcbRenderUtilCompositeTextStreamT, dx : Int16T, dy : Int16T, count : Uint32T, glyphs : Uint8T*)
  fun xcb_render_util_query_formats(c : XcbConnectionT) : XcbRenderQueryPictFormatsReplyT*
  fun xcb_render_util_query_version(c : XcbConnectionT) : XcbRenderQueryVersionReplyT*
  # Reparents a window
  fun xcb_reparent_window(c : XcbConnectionT, window : XcbWindowT, parent : XcbWindowT, x : Int16T, y : Int16T) : XcbVoidCookieT
  # Reparents a window
  fun xcb_reparent_window_checked(c : XcbConnectionT, window : XcbWindowT, parent : XcbWindowT, x : Int16T, y : Int16T) : XcbVoidCookieT
  # Return the error for a request, or NULL if none can ever arrive.
  fun xcb_request_check(c : XcbConnectionT, cookie : XcbVoidCookieT) : XcbGenericErrorT*
  # Return the iterator pointing to the last element
  fun xcb_rgb_end(i : XcbRgbIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_rgb_next(i : XcbRgbIteratorT*)
  # Returns A cookie
  fun xcb_rotate_properties(c : XcbConnectionT, window : XcbWindowT, atoms_len : Uint16T, delta : Int16T, atoms : XcbAtomT*) : XcbVoidCookieT
  fun xcb_rotate_properties_atoms(r : XcbRotatePropertiesRequestT*) : XcbAtomT*
  fun xcb_rotate_properties_atoms_end(r : XcbRotatePropertiesRequestT*) : XcbGenericIteratorT
  fun xcb_rotate_properties_atoms_length(r : XcbRotatePropertiesRequestT*) : LibC::Int
  # Returns A cookie
  fun xcb_rotate_properties_checked(c : XcbConnectionT, window : XcbWindowT, atoms_len : Uint16T, delta : Int16T, atoms : XcbAtomT*) : XcbVoidCookieT
  fun xcb_rotate_properties_sizeof(_buffer : Void*) : LibC::Int
  # Round down to the next unit size.
  fun xcb_rounddown(base : Uint32T, pad : Uint32T) : Uint32T
  # Round down to the next power-of-two unit size.
  fun xcb_rounddown_2(base : Uint32T, pad : Uint32T) : Uint32T
  # Round up to the next unit size.
  fun xcb_roundup(base : Uint32T, pad : Uint32T) : Uint32T
  # Round up to the next power-of-two unit size.
  fun xcb_roundup_2(base : Uint32T, pad : Uint32T) : Uint32T
  fun xcb_screen_allowed_depths_iterator(r : XcbScreenT*) : XcbDepthIteratorT
  fun xcb_screen_allowed_depths_length(r : XcbScreenT*) : LibC::Int
  # Return the iterator pointing to the last element
  fun xcb_screen_end(i : XcbScreenIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_screen_next(i : XcbScreenIteratorT*)
  fun xcb_screen_sizeof(_buffer : Void*) : LibC::Int
  # Return the iterator pointing to the last element
  fun xcb_segment_end(i : XcbSegmentIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_segment_next(i : XcbSegmentIteratorT*)
  # send an event
  fun xcb_send_event(c : XcbConnectionT, propagate : Uint8T, destination : XcbWindowT, event_mask : Uint32T, event : LibC::Char*) : XcbVoidCookieT
  # send an event
  fun xcb_send_event_checked(c : XcbConnectionT, propagate : Uint8T, destination : XcbWindowT, event_mask : Uint32T, event : LibC::Char*) : XcbVoidCookieT
  # Send a file descriptor to the server in the next call to xcb_send_request.
  fun xcb_send_fd(c : XcbConnectionT, fd : LibC::Int)
  # Send a request to the server.
  fun xcb_send_request(c : XcbConnectionT, flags : LibC::Int, vector : Iovec*, request : XcbProtocolRequestT*) : LibC::UInt
  # Send a request to the server, with 64-bit sequence number returned.
  fun xcb_send_request64(c : XcbConnectionT, flags : LibC::Int, vector : Iovec*, request : XcbProtocolRequestT*) : Uint64T
  # Send a request to the server.
  fun xcb_send_request_with_fds(c : XcbConnectionT, flags : LibC::Int, vector : Iovec*, request : XcbProtocolRequestT*, num_fds : LibC::UInt, fds : LibC::Int*) : LibC::UInt
  # Send a request to the server, with 64-bit sequence number returned.
  fun xcb_send_request_with_fds64(c : XcbConnectionT, flags : LibC::Int, vector : Iovec*, request : XcbProtocolRequestT*, num_fds : LibC::UInt, fds : LibC::Int*) : Uint64T
  # Returns A cookie
  fun xcb_set_access_control(c : XcbConnectionT, mode : Uint8T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_set_access_control_checked(c : XcbConnectionT, mode : Uint8T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_set_clip_rectangles(c : XcbConnectionT, ordering : Uint8T, gc : XcbGcontextT, clip_x_origin : Int16T, clip_y_origin : Int16T, rectangles_len : Uint32T, rectangles : XcbRectangleT*) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_set_clip_rectangles_checked(c : XcbConnectionT, ordering : Uint8T, gc : XcbGcontextT, clip_x_origin : Int16T, clip_y_origin : Int16T, rectangles_len : Uint32T, rectangles : XcbRectangleT*) : XcbVoidCookieT
  fun xcb_set_clip_rectangles_rectangles(r : XcbSetClipRectanglesRequestT*) : XcbRectangleT*
  fun xcb_set_clip_rectangles_rectangles_iterator(r : XcbSetClipRectanglesRequestT*) : XcbRectangleIteratorT
  fun xcb_set_clip_rectangles_rectangles_length(r : XcbSetClipRectanglesRequestT*) : LibC::Int
  fun xcb_set_clip_rectangles_sizeof(_buffer : Void*, rectangles_len : Uint32T) : LibC::Int
  # Returns A cookie
  fun xcb_set_close_down_mode(c : XcbConnectionT, mode : Uint8T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_set_close_down_mode_checked(c : XcbConnectionT, mode : Uint8T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_set_dashes(c : XcbConnectionT, gc : XcbGcontextT, dash_offset : Uint16T, dashes_len : Uint16T, dashes : Uint8T*) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_set_dashes_checked(c : XcbConnectionT, gc : XcbGcontextT, dash_offset : Uint16T, dashes_len : Uint16T, dashes : Uint8T*) : XcbVoidCookieT
  fun xcb_set_dashes_dashes(r : XcbSetDashesRequestT*) : Uint8T*
  fun xcb_set_dashes_dashes_end(r : XcbSetDashesRequestT*) : XcbGenericIteratorT
  fun xcb_set_dashes_dashes_length(r : XcbSetDashesRequestT*) : LibC::Int
  fun xcb_set_dashes_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_set_font_path(c : XcbConnectionT, font_qty : Uint16T, font : XcbStrT*) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_set_font_path_checked(c : XcbConnectionT, font_qty : Uint16T, font : XcbStrT*) : XcbVoidCookieT
  fun xcb_set_font_path_font_iterator(r : XcbSetFontPathRequestT*) : XcbStrIteratorT
  fun xcb_set_font_path_font_length(r : XcbSetFontPathRequestT*) : LibC::Int
  fun xcb_set_font_path_sizeof(_buffer : Void*) : LibC::Int
  # Sets input focus
  fun xcb_set_input_focus(c : XcbConnectionT, revert_to : Uint8T, focus : XcbWindowT, time : XcbTimestampT) : XcbVoidCookieT
  # Sets input focus
  fun xcb_set_input_focus_checked(c : XcbConnectionT, revert_to : Uint8T, focus : XcbWindowT, time : XcbTimestampT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_set_modifier_mapping(c : XcbConnectionT, keycodes_per_modifier : Uint8T, keycodes : XcbKeycodeT*) : XcbSetModifierMappingCookieT
  # Return the reply
  fun xcb_set_modifier_mapping_reply(c : XcbConnectionT, cookie : XcbSetModifierMappingCookieT, e : XcbGenericErrorT**) : XcbSetModifierMappingReplyT*
  fun xcb_set_modifier_mapping_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_set_modifier_mapping_unchecked(c : XcbConnectionT, keycodes_per_modifier : Uint8T, keycodes : XcbKeycodeT*) : XcbSetModifierMappingCookieT
  # Returns A cookie
  fun xcb_set_pointer_mapping(c : XcbConnectionT, map_len : Uint8T, map : Uint8T*) : XcbSetPointerMappingCookieT
  # Return the reply
  fun xcb_set_pointer_mapping_reply(c : XcbConnectionT, cookie : XcbSetPointerMappingCookieT, e : XcbGenericErrorT**) : XcbSetPointerMappingReplyT*
  fun xcb_set_pointer_mapping_sizeof(_buffer : Void*) : LibC::Int
  # Returns A cookie
  fun xcb_set_pointer_mapping_unchecked(c : XcbConnectionT, map_len : Uint8T, map : Uint8T*) : XcbSetPointerMappingCookieT
  # Returns A cookie
  fun xcb_set_screen_saver(c : XcbConnectionT, timeout : Int16T, interval : Int16T, prefer_blanking : Uint8T, allow_exposures : Uint8T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_set_screen_saver_checked(c : XcbConnectionT, timeout : Int16T, interval : Int16T, prefer_blanking : Uint8T, allow_exposures : Uint8T) : XcbVoidCookieT
  # Sets the owner of a selection
  fun xcb_set_selection_owner(c : XcbConnectionT, owner : XcbWindowT, selection : XcbAtomT, time : XcbTimestampT) : XcbVoidCookieT
  # Sets the owner of a selection
  fun xcb_set_selection_owner_checked(c : XcbConnectionT, owner : XcbWindowT, selection : XcbAtomT, time : XcbTimestampT) : XcbVoidCookieT
  # Return the iterator pointing to the last element
  fun xcb_setup_authenticate_end(i : XcbSetupAuthenticateIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_setup_authenticate_next(i : XcbSetupAuthenticateIteratorT*)
  fun xcb_setup_authenticate_reason(r : XcbSetupAuthenticateT*) : LibC::Char*
  fun xcb_setup_authenticate_reason_end(r : XcbSetupAuthenticateT*) : XcbGenericIteratorT
  fun xcb_setup_authenticate_reason_length(r : XcbSetupAuthenticateT*) : LibC::Int
  fun xcb_setup_authenticate_sizeof(_buffer : Void*) : LibC::Int
  # Return the iterator pointing to the last element
  fun xcb_setup_end(i : XcbSetupIteratorT) : XcbGenericIteratorT
  # Return the iterator pointing to the last element
  fun xcb_setup_failed_end(i : XcbSetupFailedIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_setup_failed_next(i : XcbSetupFailedIteratorT*)
  fun xcb_setup_failed_reason(r : XcbSetupFailedT*) : LibC::Char*
  fun xcb_setup_failed_reason_end(r : XcbSetupFailedT*) : XcbGenericIteratorT
  fun xcb_setup_failed_reason_length(r : XcbSetupFailedT*) : LibC::Int
  fun xcb_setup_failed_sizeof(_buffer : Void*) : LibC::Int
  # Get the next element of the iterator
  fun xcb_setup_next(i : XcbSetupIteratorT*)
  fun xcb_setup_pixmap_formats(r : XcbSetupT*) : XcbFormatT*
  fun xcb_setup_pixmap_formats_iterator(r : XcbSetupT*) : XcbFormatIteratorT
  fun xcb_setup_pixmap_formats_length(r : XcbSetupT*) : LibC::Int
  fun xcb_setup_request_authorization_protocol_data(r : XcbSetupRequestT*) : LibC::Char*
  fun xcb_setup_request_authorization_protocol_data_end(r : XcbSetupRequestT*) : XcbGenericIteratorT
  fun xcb_setup_request_authorization_protocol_data_length(r : XcbSetupRequestT*) : LibC::Int
  fun xcb_setup_request_authorization_protocol_name(r : XcbSetupRequestT*) : LibC::Char*
  fun xcb_setup_request_authorization_protocol_name_end(r : XcbSetupRequestT*) : XcbGenericIteratorT
  fun xcb_setup_request_authorization_protocol_name_length(r : XcbSetupRequestT*) : LibC::Int
  # Return the iterator pointing to the last element
  fun xcb_setup_request_end(i : XcbSetupRequestIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_setup_request_next(i : XcbSetupRequestIteratorT*)
  fun xcb_setup_request_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_setup_roots_iterator(r : XcbSetupT*) : XcbScreenIteratorT
  fun xcb_setup_roots_length(r : XcbSetupT*) : LibC::Int
  fun xcb_setup_sizeof(_buffer : Void*) : LibC::Int
  fun xcb_setup_vendor(r : XcbSetupT*) : LibC::Char*
  fun xcb_setup_vendor_end(r : XcbSetupT*) : XcbGenericIteratorT
  fun xcb_setup_vendor_length(r : XcbSetupT*) : LibC::Int
  fun xcb_shm_attach(c : XcbConnectionT, shmseg : XcbShmSegT, shmid : Uint32T, read_only : Uint8T) : XcbVoidCookieT
  fun xcb_shm_attach_checked(c : XcbConnectionT, shmseg : XcbShmSegT, shmid : Uint32T, read_only : Uint8T) : XcbVoidCookieT
  fun xcb_shm_attach_fd(c : XcbConnectionT, shmseg : XcbShmSegT, shm_fd : Int32T, read_only : Uint8T) : XcbVoidCookieT
  fun xcb_shm_attach_fd_checked(c : XcbConnectionT, shmseg : XcbShmSegT, shm_fd : Int32T, read_only : Uint8T) : XcbVoidCookieT
  fun xcb_shm_create_pixmap(c : XcbConnectionT, pid : XcbPixmapT, drawable : XcbDrawableT, width : Uint16T, height : Uint16T, depth : Uint8T, shmseg : XcbShmSegT, offset : Uint32T) : XcbVoidCookieT
  fun xcb_shm_create_pixmap_checked(c : XcbConnectionT, pid : XcbPixmapT, drawable : XcbDrawableT, width : Uint16T, height : Uint16T, depth : Uint8T, shmseg : XcbShmSegT, offset : Uint32T) : XcbVoidCookieT
  fun xcb_shm_create_segment(c : XcbConnectionT, shmseg : XcbShmSegT, size : Uint32T, read_only : Uint8T) : XcbShmCreateSegmentCookieT
  fun xcb_shm_create_segment_reply(c : XcbConnectionT, cookie : XcbShmCreateSegmentCookieT, e : XcbGenericErrorT**) : XcbShmCreateSegmentReplyT*
  fun xcb_shm_create_segment_reply_fds(c : XcbConnectionT, reply : XcbShmCreateSegmentReplyT*) : LibC::Int*
  fun xcb_shm_create_segment_unchecked(c : XcbConnectionT, shmseg : XcbShmSegT, size : Uint32T, read_only : Uint8T) : XcbShmCreateSegmentCookieT
  fun xcb_shm_detach(c : XcbConnectionT, shmseg : XcbShmSegT) : XcbVoidCookieT
  fun xcb_shm_detach_checked(c : XcbConnectionT, shmseg : XcbShmSegT) : XcbVoidCookieT
  fun xcb_shm_get_image(c : XcbConnectionT, drawable : XcbDrawableT, x : Int16T, y : Int16T, width : Uint16T, height : Uint16T, plane_mask : Uint32T, format : Uint8T, shmseg : XcbShmSegT, offset : Uint32T) : XcbShmGetImageCookieT
  fun xcb_shm_get_image_reply(c : XcbConnectionT, cookie : XcbShmGetImageCookieT, e : XcbGenericErrorT**) : XcbShmGetImageReplyT*
  fun xcb_shm_get_image_unchecked(c : XcbConnectionT, drawable : XcbDrawableT, x : Int16T, y : Int16T, width : Uint16T, height : Uint16T, plane_mask : Uint32T, format : Uint8T, shmseg : XcbShmSegT, offset : Uint32T) : XcbShmGetImageCookieT
  fun xcb_shm_put_image(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, total_width : Uint16T, total_height : Uint16T, src_x : Uint16T, src_y : Uint16T, src_width : Uint16T, src_height : Uint16T, dst_x : Int16T, dst_y : Int16T, depth : Uint8T, format : Uint8T, send_event : Uint8T, shmseg : XcbShmSegT, offset : Uint32T) : XcbVoidCookieT
  fun xcb_shm_put_image_checked(c : XcbConnectionT, drawable : XcbDrawableT, gc : XcbGcontextT, total_width : Uint16T, total_height : Uint16T, src_x : Uint16T, src_y : Uint16T, src_width : Uint16T, src_height : Uint16T, dst_x : Int16T, dst_y : Int16T, depth : Uint8T, format : Uint8T, send_event : Uint8T, shmseg : XcbShmSegT, offset : Uint32T) : XcbVoidCookieT
  fun xcb_shm_query_version(c : XcbConnectionT) : XcbShmQueryVersionCookieT
  fun xcb_shm_query_version_reply(c : XcbConnectionT, cookie : XcbShmQueryVersionCookieT, e : XcbGenericErrorT**) : XcbShmQueryVersionReplyT*
  fun xcb_shm_query_version_unchecked(c : XcbConnectionT) : XcbShmQueryVersionCookieT
  fun xcb_shm_seg_end(i : XcbShmSegIteratorT) : XcbGenericIteratorT
  fun xcb_shm_seg_next(i : XcbShmSegIteratorT*)
  # Returns A cookie
  fun xcb_store_colors(c : XcbConnectionT, cmap : XcbColormapT, items_len : Uint32T, items : XcbColoritemT*) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_store_colors_checked(c : XcbConnectionT, cmap : XcbColormapT, items_len : Uint32T, items : XcbColoritemT*) : XcbVoidCookieT
  fun xcb_store_colors_items(r : XcbStoreColorsRequestT*) : XcbColoritemT*
  fun xcb_store_colors_items_iterator(r : XcbStoreColorsRequestT*) : XcbColoritemIteratorT
  fun xcb_store_colors_items_length(r : XcbStoreColorsRequestT*) : LibC::Int
  fun xcb_store_colors_sizeof(_buffer : Void*, items_len : Uint32T) : LibC::Int
  # Returns A cookie
  fun xcb_store_named_color(c : XcbConnectionT, flags : Uint8T, cmap : XcbColormapT, pixel : Uint32T, name_len : Uint16T, name : LibC::Char*) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_store_named_color_checked(c : XcbConnectionT, flags : Uint8T, cmap : XcbColormapT, pixel : Uint32T, name_len : Uint16T, name : LibC::Char*) : XcbVoidCookieT
  fun xcb_store_named_color_name(r : XcbStoreNamedColorRequestT*) : LibC::Char*
  fun xcb_store_named_color_name_end(r : XcbStoreNamedColorRequestT*) : XcbGenericIteratorT
  fun xcb_store_named_color_name_length(r : XcbStoreNamedColorRequestT*) : LibC::Int
  fun xcb_store_named_color_sizeof(_buffer : Void*) : LibC::Int
  # Return the iterator pointing to the last element
  fun xcb_str_end(i : XcbStrIteratorT) : XcbGenericIteratorT
  fun xcb_str_name(r : XcbStrT*) : LibC::Char*
  fun xcb_str_name_end(r : XcbStrT*) : XcbGenericIteratorT
  fun xcb_str_name_length(r : XcbStrT*) : LibC::Int
  # Get the next element of the iterator
  fun xcb_str_next(i : XcbStrIteratorT*)
  fun xcb_str_sizeof(_buffer : Void*) : LibC::Int
  # Returns The sum of all entries in the array.
  fun xcb_sumof(list : Uint8T*, len : LibC::Int) : LibC::Int
  # Take over the write side of the socket
  fun xcb_take_socket(c : XcbConnectionT, return_socket : (Void* -> Void), closure : Void*, flags : LibC::Int, sent : Uint64T*) : LibC::Int
  # Return the iterator pointing to the last element
  fun xcb_timecoord_end(i : XcbTimecoordIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_timecoord_next(i : XcbTimecoordIteratorT*)
  # Return the iterator pointing to the last element
  fun xcb_timestamp_end(i : XcbTimestampIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_timestamp_next(i : XcbTimestampIteratorT*)
  # Obtain number of bytes read from the connection.
  fun xcb_total_read(c : XcbConnectionT) : Uint64T
  # Obtain number of bytes written to the connection.
  fun xcb_total_written(c : XcbConnectionT) : Uint64T
  # Returns A cookie
  fun xcb_translate_coordinates(c : XcbConnectionT, src_window : XcbWindowT, dst_window : XcbWindowT, src_x : Int16T, src_y : Int16T) : XcbTranslateCoordinatesCookieT
  # Return the reply
  fun xcb_translate_coordinates_reply(c : XcbConnectionT, cookie : XcbTranslateCoordinatesCookieT, e : XcbGenericErrorT**) : XcbTranslateCoordinatesReplyT*
  # Returns A cookie
  fun xcb_translate_coordinates_unchecked(c : XcbConnectionT, src_window : XcbWindowT, dst_window : XcbWindowT, src_x : Int16T, src_y : Int16T) : XcbTranslateCoordinatesCookieT
  # Returns A cookie
  fun xcb_ungrab_button(c : XcbConnectionT, button : Uint8T, grab_window : XcbWindowT, modifiers : Uint16T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_ungrab_button_checked(c : XcbConnectionT, button : Uint8T, grab_window : XcbWindowT, modifiers : Uint16T) : XcbVoidCookieT
  # release a key combination
  fun xcb_ungrab_key(c : XcbConnectionT, key : XcbKeycodeT, grab_window : XcbWindowT, modifiers : Uint16T) : XcbVoidCookieT
  # release a key combination
  fun xcb_ungrab_key_checked(c : XcbConnectionT, key : XcbKeycodeT, grab_window : XcbWindowT, modifiers : Uint16T) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_ungrab_keyboard(c : XcbConnectionT, time : XcbTimestampT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_ungrab_keyboard_checked(c : XcbConnectionT, time : XcbTimestampT) : XcbVoidCookieT
  # release the pointer
  fun xcb_ungrab_pointer(c : XcbConnectionT, time : XcbTimestampT) : XcbVoidCookieT
  # release the pointer
  fun xcb_ungrab_pointer_checked(c : XcbConnectionT, time : XcbTimestampT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_ungrab_server(c : XcbConnectionT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_ungrab_server_checked(c : XcbConnectionT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_uninstall_colormap(c : XcbConnectionT, cmap : XcbColormapT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_uninstall_colormap_checked(c : XcbConnectionT, cmap : XcbColormapT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_unmap_subwindows(c : XcbConnectionT, window : XcbWindowT) : XcbVoidCookieT
  # Returns A cookie
  fun xcb_unmap_subwindows_checked(c : XcbConnectionT, window : XcbWindowT) : XcbVoidCookieT
  # Makes a window invisible
  fun xcb_unmap_window(c : XcbConnectionT, window : XcbWindowT) : XcbVoidCookieT
  # Makes a window invisible
  fun xcb_unmap_window_checked(c : XcbConnectionT, window : XcbWindowT) : XcbVoidCookieT
  # Stop listening for a special event
  fun xcb_unregister_for_special_event(c : XcbConnectionT, se : XcbSpecialEventT)
  # Return the iterator pointing to the last element
  fun xcb_visualid_end(i : XcbVisualidIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_visualid_next(i : XcbVisualidIteratorT*)
  # Return the iterator pointing to the last element
  fun xcb_visualtype_end(i : XcbVisualtypeIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_visualtype_next(i : XcbVisualtypeIteratorT*)
  # Returns the next event or error from the server.
  fun xcb_wait_for_event(c : XcbConnectionT) : XcbGenericEventT*
  # Wait for the reply of a given request.
  fun xcb_wait_for_reply(c : XcbConnectionT, request : LibC::UInt, e : XcbGenericErrorT**) : Void*
  # Wait for the reply of a given request, with 64-bit sequence number
  fun xcb_wait_for_reply64(c : XcbConnectionT, request : Uint64T, e : XcbGenericErrorT**) : Void*
  # Returns the next event from a special queue, blocking until one arrives
  fun xcb_wait_for_special_event(c : XcbConnectionT, se : XcbSpecialEventT) : XcbGenericEventT*
  # move mouse pointer
  fun xcb_warp_pointer(c : XcbConnectionT, src_window : XcbWindowT, dst_window : XcbWindowT, src_x : Int16T, src_y : Int16T, src_width : Uint16T, src_height : Uint16T, dst_x : Int16T, dst_y : Int16T) : XcbVoidCookieT
  # move mouse pointer
  fun xcb_warp_pointer_checked(c : XcbConnectionT, src_window : XcbWindowT, dst_window : XcbWindowT, src_x : Int16T, src_y : Int16T, src_width : Uint16T, src_height : Uint16T, dst_x : Int16T, dst_y : Int16T) : XcbVoidCookieT
  # Return the iterator pointing to the last element
  fun xcb_window_end(i : XcbWindowIteratorT) : XcbGenericIteratorT
  # Get the next element of the iterator
  fun xcb_window_next(i : XcbWindowIteratorT*)
  # Send raw data to the X server.
  fun xcb_writev(c : XcbConnectionT, vector : Iovec*, count : LibC::Int, requests : Uint64T) : LibC::Int
  # Combines two databases. The entries from the source database are stored in the target database. If the same specifier already exists in the target database, the value will be overridden if override is set; otherwise, the value is discarded. If NULL is passed for target_db, a new and empty database will be created and returned in the pointer.
  fun xcb_xrm_database_combine(source_db : XcbXrmDatabaseT, target_db : XcbXrmDatabaseT*, override : LibC::Bool)
  # Destroys the given database.
  fun xcb_xrm_database_free(database : XcbXrmDatabaseT)
  # Creates a database similarly to XGetDefault(). For typical applications, this is the recommended way to construct the resource database.
  fun xcb_xrm_database_from_default(conn : XcbConnectionT) : XcbXrmDatabaseT
  # Creates a database from a given file. If the file cannot be found or opened, NULL is returned.
  fun xcb_xrm_database_from_file(filename : LibC::Char*) : XcbXrmDatabaseT
  # Loads the RESOURCE_MANAGER property and creates a database with its contents. If the database could not be created, this function will return NULL.
  fun xcb_xrm_database_from_resource_manager(conn : XcbConnectionT, screen : XcbScreenT*) : XcbXrmDatabaseT
  # Creates a database from the given string. If the database could not be created, this function will return NULL.
  fun xcb_xrm_database_from_string(str : LibC::Char*) : XcbXrmDatabaseT
  # Inserts a new resource into the database. If the resource already exists, the current value will be replaced. If NULL is passed for database, a new and empty database will be created and returned in the pointer.
  fun xcb_xrm_database_put_resource(database : XcbXrmDatabaseT*, resource : LibC::Char*, value : LibC::Char*)
  # Inserts a new resource into the database. If the resource already exists, the current value will be replaced. If NULL is passed for database, a new and empty database will be created and returned in the pointer.
  fun xcb_xrm_database_put_resource_line(database : XcbXrmDatabaseT*, line : LibC::Char*)
  # Returns a string representation of a database. The string is owned by the caller and must be free'd.
  fun xcb_xrm_database_to_string(database : XcbXrmDatabaseT) : LibC::Char*
  # Find the bool value of a resource.
  fun xcb_xrm_resource_get_bool(database : XcbXrmDatabaseT, res_name : LibC::Char*, res_class : LibC::Char*, out : LibC::Bool*) : LibC::Int
  # Find the long value of a resource.
  fun xcb_xrm_resource_get_long(database : XcbXrmDatabaseT, res_name : LibC::Char*, res_class : LibC::Char*, out : LibC::Long*) : LibC::Int
  # Find the string value of a resource.
  fun xcb_xrm_resource_get_string(database : XcbXrmDatabaseT, res_name : LibC::Char*, res_class : LibC::Char*, out : LibC::Char**) : LibC::Int

  struct Iovec
    iov_base : Void*
    iov_len : LibC::SizeT
  end

  struct XcbAllocColorCellsCookieT
    sequence : LibC::UInt
  end

  struct XcbAllocColorCellsReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    pixels_len : Uint16T
    masks_len : Uint16T
    pad1 : Uint8T[20]
  end

  struct XcbAllocColorCellsRequestT
    major_opcode : Uint8T
    contiguous : Uint8T
    length : Uint16T
    cmap : XcbColormapT
    colors : Uint16T
    planes : Uint16T
  end

  struct XcbAllocColorCookieT
    sequence : LibC::UInt
  end

  struct XcbAllocColorPlanesCookieT
    sequence : LibC::UInt
  end

  struct XcbAllocColorPlanesReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    pixels_len : Uint16T
    pad1 : Uint8T[2]
    red_mask : Uint32T
    green_mask : Uint32T
    blue_mask : Uint32T
    pad2 : Uint8T[8]
  end

  struct XcbAllocColorPlanesRequestT
    major_opcode : Uint8T
    contiguous : Uint8T
    length : Uint16T
    cmap : XcbColormapT
    colors : Uint16T
    reds : Uint16T
    greens : Uint16T
    blues : Uint16T
  end

  struct XcbAllocColorReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    red : Uint16T
    green : Uint16T
    blue : Uint16T
    pad1 : Uint8T[2]
    pixel : Uint32T
  end

  struct XcbAllocColorRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    cmap : XcbColormapT
    red : Uint16T
    green : Uint16T
    blue : Uint16T
    pad1 : Uint8T[2]
  end

  struct XcbAllocNamedColorCookieT
    sequence : LibC::UInt
  end

  struct XcbAllocNamedColorReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    pixel : Uint32T
    exact_red : Uint16T
    exact_green : Uint16T
    exact_blue : Uint16T
    visual_red : Uint16T
    visual_green : Uint16T
    visual_blue : Uint16T
  end

  struct XcbAllocNamedColorRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    cmap : XcbColormapT
    name_len : Uint16T
    pad1 : Uint8T[2]
  end

  struct XcbAllowEventsRequestT
    major_opcode : Uint8T
    mode : Uint8T
    length : Uint16T
    time : XcbTimestampT
  end

  struct XcbArcIteratorT
    data : XcbArcT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbArcT
    x : Int16T
    y : Int16T
    width : Uint16T
    height : Uint16T
    angle1 : Int16T
    angle2 : Int16T
  end

  struct XcbAtomIteratorT
    data : XcbAtomT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbAuthInfoT
    # Length of the string name (as returned by strlen).
    namelen : LibC::Int
    # String containing the authentication protocol name, such as "MIT-MAGIC-COOKIE-1" or "XDM-AUTHORIZATION-1".
    name : LibC::Char*
    # Length of the data member.
    datalen : LibC::Int
    # Data interpreted in a protocol-specific manner.
    data : LibC::Char*
  end

  struct XcbBellRequestT
    major_opcode : Uint8T
    percent : Int8T
    length : Uint16T
  end

  struct XcbBool32IteratorT
    data : XcbBool32T*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbButtonIteratorT
    data : XcbButtonT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbButtonPressEventT
    response_type : Uint8T
    detail : XcbButtonT
    sequence : Uint16T
    time : XcbTimestampT
    root : XcbWindowT
    event : XcbWindowT
    child : XcbWindowT
    root_x : Int16T
    root_y : Int16T
    event_x : Int16T
    event_y : Int16T
    state : Uint16T
    same_screen : Uint8T
    pad0 : Uint8T
  end

  struct XcbChangeActivePointerGrabRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    cursor : XcbCursorT
    time : XcbTimestampT
    event_mask : Uint16T
    pad1 : Uint8T[2]
  end

  struct XcbChangeGcRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    gc : XcbGcontextT
    value_mask : Uint32T
  end

  struct XcbChangeGcValueListT
    function : Uint32T
    plane_mask : Uint32T
    foreground : Uint32T
    background : Uint32T
    line_width : Uint32T
    line_style : Uint32T
    cap_style : Uint32T
    join_style : Uint32T
    fill_style : Uint32T
    fill_rule : Uint32T
    tile : XcbPixmapT
    stipple : XcbPixmapT
    tile_stipple_x_origin : Int32T
    tile_stipple_y_origin : Int32T
    font : XcbFontT
    subwindow_mode : Uint32T
    graphics_exposures : XcbBool32T
    clip_x_origin : Int32T
    clip_y_origin : Int32T
    clip_mask : XcbPixmapT
    dash_offset : Uint32T
    dashes : Uint32T
    arc_mode : Uint32T
  end

  struct XcbChangeHostsRequestT
    major_opcode : Uint8T
    mode : Uint8T
    length : Uint16T
    family : Uint8T
    pad0 : Uint8T
    address_len : Uint16T
  end

  struct XcbChangeKeyboardControlRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    value_mask : Uint32T
  end

  struct XcbChangeKeyboardControlValueListT
    key_click_percent : Int32T
    bell_percent : Int32T
    bell_pitch : Int32T
    bell_duration : Int32T
    led : Uint32T
    led_mode : Uint32T
    key : XcbKeycode32T
    auto_repeat_mode : Uint32T
  end

  struct XcbChangeKeyboardMappingRequestT
    major_opcode : Uint8T
    keycode_count : Uint8T
    length : Uint16T
    first_keycode : XcbKeycodeT
    keysyms_per_keycode : Uint8T
    pad0 : Uint8T[2]
  end

  struct XcbChangePointerControlRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    acceleration_numerator : Int16T
    acceleration_denominator : Int16T
    threshold : Int16T
    do_acceleration : Uint8T
    do_threshold : Uint8T
  end

  struct XcbChangePropertyRequestT
    major_opcode : Uint8T
    mode : Uint8T
    length : Uint16T
    window : XcbWindowT
    property : XcbAtomT
    type : XcbAtomT
    format : Uint8T
    pad0 : Uint8T[3]
    data_len : Uint32T
  end

  struct XcbChangeSaveSetRequestT
    major_opcode : Uint8T
    mode : Uint8T
    length : Uint16T
    window : XcbWindowT
  end

  struct XcbChangeWindowAttributesRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    window : XcbWindowT
    value_mask : Uint32T
  end

  struct XcbChangeWindowAttributesValueListT
    background_pixmap : XcbPixmapT
    background_pixel : Uint32T
    border_pixmap : XcbPixmapT
    border_pixel : Uint32T
    bit_gravity : Uint32T
    win_gravity : Uint32T
    backing_store : Uint32T
    backing_planes : Uint32T
    backing_pixel : Uint32T
    override_redirect : XcbBool32T
    save_under : XcbBool32T
    event_mask : Uint32T
    do_not_propogate_mask : Uint32T
    colormap : XcbColormapT
    cursor : XcbCursorT
  end

  struct XcbChar2bIteratorT
    data : XcbChar2bT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbChar2bT
    byte1 : Uint8T
    byte2 : Uint8T
  end

  struct XcbCharinfoIteratorT
    data : XcbCharinfoT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbCharinfoT
    left_side_bearing : Int16T
    right_side_bearing : Int16T
    character_width : Int16T
    ascent : Int16T
    descent : Int16T
    attributes : Uint16T
  end

  struct XcbCirculateNotifyEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    event : XcbWindowT
    window : XcbWindowT
    pad1 : Uint8T[4]
    place : Uint8T
    pad2 : Uint8T[3]
  end

  struct XcbCirculateWindowRequestT
    major_opcode : Uint8T
    direction : Uint8T
    length : Uint16T
    window : XcbWindowT
  end

  struct XcbClearAreaRequestT
    major_opcode : Uint8T
    exposures : Uint8T
    length : Uint16T
    window : XcbWindowT
    x : Int16T
    y : Int16T
    width : Uint16T
    height : Uint16T
  end

  struct XcbClientMessageDataIteratorT
    data : XcbClientMessageDataT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbClientMessageEventT
    response_type : Uint8T
    format : Uint8T
    sequence : Uint16T
    window : XcbWindowT
    type : XcbAtomT
    data : XcbClientMessageDataT
  end

  struct XcbCloseFontRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    font : XcbFontT
  end

  struct XcbColoritemIteratorT
    data : XcbColoritemT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbColoritemT
    pixel : Uint32T
    red : Uint16T
    green : Uint16T
    blue : Uint16T
    flags : Uint8T
    pad0 : Uint8T
  end

  struct XcbColormapIteratorT
    data : XcbColormapT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbColormapNotifyEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    window : XcbWindowT
    colormap : XcbColormapT
    _new : Uint8T
    state : Uint8T
    pad1 : Uint8T[2]
  end

  struct XcbConfigureNotifyEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    event : XcbWindowT
    window : XcbWindowT
    above_sibling : XcbWindowT
    x : Int16T
    y : Int16T
    width : Uint16T
    height : Uint16T
    border_width : Uint16T
    override_redirect : Uint8T
    pad1 : Uint8T
  end

  struct XcbConfigureRequestEventT
    response_type : Uint8T
    stack_mode : Uint8T
    sequence : Uint16T
    parent : XcbWindowT
    window : XcbWindowT
    sibling : XcbWindowT
    x : Int16T
    y : Int16T
    width : Uint16T
    height : Uint16T
    border_width : Uint16T
    value_mask : Uint16T
  end

  struct XcbConfigureWindowRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    window : XcbWindowT
    value_mask : Uint16T
    pad1 : Uint8T[2]
  end

  struct XcbConfigureWindowValueListT
    x : Int32T
    y : Int32T
    width : Uint32T
    height : Uint32T
    border_width : Uint32T
    sibling : XcbWindowT
    stack_mode : Uint32T
  end

  struct XcbConvertSelectionRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    requestor : XcbWindowT
    selection : XcbAtomT
    target : XcbAtomT
    property : XcbAtomT
    time : XcbTimestampT
  end

  struct XcbCopyAreaRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    src_drawable : XcbDrawableT
    dst_drawable : XcbDrawableT
    gc : XcbGcontextT
    src_x : Int16T
    src_y : Int16T
    dst_x : Int16T
    dst_y : Int16T
    width : Uint16T
    height : Uint16T
  end

  struct XcbCopyColormapAndFreeRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    mid : XcbColormapT
    src_cmap : XcbColormapT
  end

  struct XcbCopyGcRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    src_gc : XcbGcontextT
    dst_gc : XcbGcontextT
    value_mask : Uint32T
  end

  struct XcbCopyPlaneRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    src_drawable : XcbDrawableT
    dst_drawable : XcbDrawableT
    gc : XcbGcontextT
    src_x : Int16T
    src_y : Int16T
    dst_x : Int16T
    dst_y : Int16T
    width : Uint16T
    height : Uint16T
    bit_plane : Uint32T
  end

  struct XcbCreateColormapRequestT
    major_opcode : Uint8T
    alloc : Uint8T
    length : Uint16T
    mid : XcbColormapT
    window : XcbWindowT
    visual : XcbVisualidT
  end

  struct XcbCreateCursorRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    cid : XcbCursorT
    source : XcbPixmapT
    mask : XcbPixmapT
    fore_red : Uint16T
    fore_green : Uint16T
    fore_blue : Uint16T
    back_red : Uint16T
    back_green : Uint16T
    back_blue : Uint16T
    x : Uint16T
    y : Uint16T
  end

  struct XcbCreateGcRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    cid : XcbGcontextT
    drawable : XcbDrawableT
    value_mask : Uint32T
  end

  struct XcbCreateGcValueListT
    function : Uint32T
    plane_mask : Uint32T
    foreground : Uint32T
    background : Uint32T
    line_width : Uint32T
    line_style : Uint32T
    cap_style : Uint32T
    join_style : Uint32T
    fill_style : Uint32T
    fill_rule : Uint32T
    tile : XcbPixmapT
    stipple : XcbPixmapT
    tile_stipple_x_origin : Int32T
    tile_stipple_y_origin : Int32T
    font : XcbFontT
    subwindow_mode : Uint32T
    graphics_exposures : XcbBool32T
    clip_x_origin : Int32T
    clip_y_origin : Int32T
    clip_mask : XcbPixmapT
    dash_offset : Uint32T
    dashes : Uint32T
    arc_mode : Uint32T
  end

  struct XcbCreateGlyphCursorRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    cid : XcbCursorT
    source_font : XcbFontT
    mask_font : XcbFontT
    source_char : Uint16T
    mask_char : Uint16T
    fore_red : Uint16T
    fore_green : Uint16T
    fore_blue : Uint16T
    back_red : Uint16T
    back_green : Uint16T
    back_blue : Uint16T
  end

  struct XcbCreateNotifyEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    parent : XcbWindowT
    window : XcbWindowT
    x : Int16T
    y : Int16T
    width : Uint16T
    height : Uint16T
    border_width : Uint16T
    override_redirect : Uint8T
    pad1 : Uint8T
  end

  struct XcbCreatePixmapRequestT
    major_opcode : Uint8T
    depth : Uint8T
    length : Uint16T
    pid : XcbPixmapT
    drawable : XcbDrawableT
    width : Uint16T
    height : Uint16T
  end

  struct XcbCreateWindowRequestT
    major_opcode : Uint8T
    depth : Uint8T
    length : Uint16T
    wid : XcbWindowT
    parent : XcbWindowT
    x : Int16T
    y : Int16T
    width : Uint16T
    height : Uint16T
    border_width : Uint16T
    _class : Uint16T
    visual : XcbVisualidT
    value_mask : Uint32T
  end

  struct XcbCreateWindowValueListT
    background_pixmap : XcbPixmapT
    background_pixel : Uint32T
    border_pixmap : XcbPixmapT
    border_pixel : Uint32T
    bit_gravity : Uint32T
    win_gravity : Uint32T
    backing_store : Uint32T
    backing_planes : Uint32T
    backing_pixel : Uint32T
    override_redirect : XcbBool32T
    save_under : XcbBool32T
    event_mask : Uint32T
    do_not_propogate_mask : Uint32T
    colormap : XcbColormapT
    cursor : XcbCursorT
  end

  struct XcbCursorIteratorT
    data : XcbCursorT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbDeletePropertyRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    window : XcbWindowT
    property : XcbAtomT
  end

  struct XcbDepthIteratorT
    data : XcbDepthT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbDepthT
    depth : Uint8T
    pad0 : Uint8T
    visuals_len : Uint16T
    pad1 : Uint8T[4]
  end

  struct XcbDestroyNotifyEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    event : XcbWindowT
    window : XcbWindowT
  end

  struct XcbDestroySubwindowsRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    window : XcbWindowT
  end

  struct XcbDestroyWindowRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    window : XcbWindowT
  end

  struct XcbDrawableIteratorT
    data : XcbDrawableT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbEnterNotifyEventT
    response_type : Uint8T
    detail : Uint8T
    sequence : Uint16T
    time : XcbTimestampT
    root : XcbWindowT
    event : XcbWindowT
    child : XcbWindowT
    root_x : Int16T
    root_y : Int16T
    event_x : Int16T
    event_y : Int16T
    state : Uint16T
    mode : Uint8T
    same_screen_focus : Uint8T
  end

  struct XcbEwmhConnectionT
    # The X connection
    connection : XcbConnectionT
    # The screens on this connection
    screens : XcbScreenT**
    nb_screens : LibC::Int
    # _NET_WM_CM_Sn atoms depending on the number of screens
    _net_wm_cm_sn : XcbAtomT*
    # The EWMH atoms of this connection
    _net_supported : XcbAtomT
    _net_client_list : XcbAtomT
    _net_client_list_stacking : XcbAtomT
    _net_number_of_desktops : XcbAtomT
    _net_desktop_geometry : XcbAtomT
    _net_desktop_viewport : XcbAtomT
    _net_current_desktop : XcbAtomT
    _net_desktop_names : XcbAtomT
    _net_active_window : XcbAtomT
    _net_workarea : XcbAtomT
    _net_supporting_wm_check : XcbAtomT
    _net_virtual_roots : XcbAtomT
    _net_desktop_layout : XcbAtomT
    _net_showing_desktop : XcbAtomT
    _net_close_window : XcbAtomT
    _net_moveresize_window : XcbAtomT
    _net_wm_moveresize : XcbAtomT
    _net_restack_window : XcbAtomT
    _net_request_frame_extents : XcbAtomT
    _net_wm_name : XcbAtomT
    _net_wm_visible_name : XcbAtomT
    _net_wm_icon_name : XcbAtomT
    _net_wm_visible_icon_name : XcbAtomT
    _net_wm_desktop : XcbAtomT
    _net_wm_window_type : XcbAtomT
    _net_wm_state : XcbAtomT
    _net_wm_allowed_actions : XcbAtomT
    _net_wm_strut : XcbAtomT
    _net_wm_strut_partial : XcbAtomT
    _net_wm_icon_geometry : XcbAtomT
    _net_wm_icon : XcbAtomT
    _net_wm_pid : XcbAtomT
    _net_wm_handled_icons : XcbAtomT
    _net_wm_user_time : XcbAtomT
    _net_wm_user_time_window : XcbAtomT
    _net_frame_extents : XcbAtomT
    _net_wm_ping : XcbAtomT
    _net_wm_sync_request : XcbAtomT
    _net_wm_sync_request_counter : XcbAtomT
    _net_wm_fullscreen_monitors : XcbAtomT
    _net_wm_full_placement : XcbAtomT
    utf8_string : XcbAtomT
    wm_protocols : XcbAtomT
    manager : XcbAtomT
    _net_wm_window_type_desktop : XcbAtomT
    _net_wm_window_type_dock : XcbAtomT
    _net_wm_window_type_toolbar : XcbAtomT
    _net_wm_window_type_menu : XcbAtomT
    _net_wm_window_type_utility : XcbAtomT
    _net_wm_window_type_splash : XcbAtomT
    _net_wm_window_type_dialog : XcbAtomT
    _net_wm_window_type_dropdown_menu : XcbAtomT
    _net_wm_window_type_popup_menu : XcbAtomT
    _net_wm_window_type_tooltip : XcbAtomT
    _net_wm_window_type_notification : XcbAtomT
    _net_wm_window_type_combo : XcbAtomT
    _net_wm_window_type_dnd : XcbAtomT
    _net_wm_window_type_normal : XcbAtomT
    _net_wm_state_modal : XcbAtomT
    _net_wm_state_sticky : XcbAtomT
    _net_wm_state_maximized_vert : XcbAtomT
    _net_wm_state_maximized_horz : XcbAtomT
    _net_wm_state_shaded : XcbAtomT
    _net_wm_state_skip_taskbar : XcbAtomT
    _net_wm_state_skip_pager : XcbAtomT
    _net_wm_state_hidden : XcbAtomT
    _net_wm_state_fullscreen : XcbAtomT
    _net_wm_state_above : XcbAtomT
    _net_wm_state_below : XcbAtomT
    _net_wm_state_demands_attention : XcbAtomT
    _net_wm_action_move : XcbAtomT
    _net_wm_action_resize : XcbAtomT
    _net_wm_action_minimize : XcbAtomT
    _net_wm_action_shade : XcbAtomT
    _net_wm_action_stick : XcbAtomT
    _net_wm_action_maximize_horz : XcbAtomT
    _net_wm_action_maximize_vert : XcbAtomT
    _net_wm_action_fullscreen : XcbAtomT
    _net_wm_action_change_desktop : XcbAtomT
    _net_wm_action_close : XcbAtomT
    _net_wm_action_above : XcbAtomT
    _net_wm_action_below : XcbAtomT
  end

  struct XcbEwmhCoordinatesT
    # The x coordinate
    x : Uint32T
    # The y coordinate
    y : Uint32T
  end

  struct XcbEwmhGeometryT
    # The x coordinate
    x : Uint32T
    # The y coordinate
    y : Uint32T
    # The width
    width : Uint32T
    # The height
    height : Uint32T
  end

  struct XcbEwmhGetAtomsReplyT
    # The number of Atoms
    atoms_len : Uint32T
    # The list of Atoms
    atoms : XcbAtomT*
    # The actual GetProperty reply
    _reply : XcbGetPropertyReplyT*
  end

  struct XcbEwmhGetDesktopLayoutReplyT
    # The desktops orientation
    orientation : Uint32T
    # The number of columns
    columns : Uint32T
    # The number of rows
    rows : Uint32T
    # The desktops starting corner
    starting_corner : Uint32T
  end

  struct XcbEwmhGetDesktopViewportReplyT
    # The number of desktop viewports
    desktop_viewport_len : Uint32T
    # The desktop viewports
    desktop_viewport : XcbEwmhCoordinatesT*
    # The actual GetProperty reply
    _reply : XcbGetPropertyReplyT*
  end

  struct XcbEwmhGetExtentsReplyT
    # Width of the left border
    left : Uint32T
    # Width of the right border
    right : Uint32T
    # Width of the top border
    top : Uint32T
    # Width of the bottom border
    bottom : Uint32T
  end

  struct XcbEwmhGetUtf8StringsReplyT
    # The number of UTF-8 strings
    strings_len : Uint32T
    # The list of UTF-8 strings
    strings : LibC::Char*
    # The actual GetProperty reply
    _reply : XcbGetPropertyReplyT*
  end

  struct XcbEwmhGetWindowsReplyT
    # The number of Windows
    windows_len : Uint32T
    # The list of Windows
    windows : XcbWindowT*
    # The actual GetProperty reply
    _reply : XcbGetPropertyReplyT*
  end

  struct XcbEwmhGetWmFullscreenMonitorsReplyT
    # Monitor whose top edge defines the top edge of the fullscreen window
    top : Uint32T
    # Monitor whose bottom edge defines the bottom edge of the fullscreen window
    bottom : Uint32T
    # Monitor whose left edge defines the left edge of the fullscreen window
    left : Uint32T
    # Monitor whose right edge defines the right edge of the fullscreen window
    right : Uint32T
  end

  struct XcbEwmhGetWmIconReplyT
    # Number of icons
    num_icons : LibC::UInt
    # The actual GetProperty reply
    _reply : XcbGetPropertyReplyT*
  end

  struct XcbEwmhGetWorkareaReplyT
    # The number of desktop workarea
    workarea_len : Uint32T
    # The list of desktop workarea
    workarea : XcbEwmhGeometryT*
    # The actual GetProperty reply
    _reply : XcbGetPropertyReplyT*
  end

  struct XcbEwmhWmIconIteratorT
    # Icon width
    width : Uint32T
    # Icon height
    height : Uint32T
    # Rows, left to right and top to bottom of the CARDINAL ARGB
    data : Uint32T*
    # Number of icons remaining
    rem : LibC::UInt
    # Index of the current icon in the array of icons
    index : LibC::UInt
  end

  struct XcbEwmhWmStrutPartialT
    # Reserved space on the left border of the screen
    left : Uint32T
    # Reserved space on the right border of the screen
    right : Uint32T
    # Reserved space on the top border of the screen
    top : Uint32T
    # Reserved space on the bottom border of the screen
    bottom : Uint32T
    # Beginning y coordinate of the left strut
    left_start_y : Uint32T
    # Ending y coordinate of the left strut
    left_end_y : Uint32T
    # Beginning y coordinate of the right strut
    right_start_y : Uint32T
    # Ending y coordinate of the right strut
    right_end_y : Uint32T
    # Beginning x coordinate of the top strut
    top_start_x : Uint32T
    # Ending x coordinate of the top strut
    top_end_x : Uint32T
    # Beginning x coordinate of the bottom strut
    bottom_start_x : Uint32T
    # Ending x coordinate of the bottom strut
    bottom_end_x : Uint32T
  end

  struct XcbExposeEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    window : XcbWindowT
    x : Uint16T
    y : Uint16T
    width : Uint16T
    height : Uint16T
    count : Uint16T
    pad1 : Uint8T[2]
  end

  struct XcbExtensionT
    name : LibC::Char*
    global_id : LibC::Int
  end

  struct XcbFillPolyRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
    gc : XcbGcontextT
    shape : Uint8T
    coordinate_mode : Uint8T
    pad1 : Uint8T[2]
  end

  struct XcbFocusInEventT
    response_type : Uint8T
    detail : Uint8T
    sequence : Uint16T
    event : XcbWindowT
    mode : Uint8T
    pad0 : Uint8T[3]
  end

  struct XcbFontIteratorT
    data : XcbFontT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbFontableIteratorT
    data : XcbFontableT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbFontpropIteratorT
    data : XcbFontpropT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbFontpropT
    name : XcbAtomT
    value : Uint32T
  end

  struct XcbForceScreenSaverRequestT
    major_opcode : Uint8T
    mode : Uint8T
    length : Uint16T
  end

  struct XcbFormatIteratorT
    data : XcbFormatT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbFormatT
    depth : Uint8T
    bits_per_pixel : Uint8T
    scanline_pad : Uint8T
    pad0 : Uint8T[5]
  end

  struct XcbFreeColormapRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    cmap : XcbColormapT
  end

  struct XcbFreeColorsRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    cmap : XcbColormapT
    plane_mask : Uint32T
  end

  struct XcbFreeCursorRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    cursor : XcbCursorT
  end

  struct XcbFreeGcRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    gc : XcbGcontextT
  end

  struct XcbFreePixmapRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    pixmap : XcbPixmapT
  end

  struct XcbGcontextIteratorT
    data : XcbGcontextT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbGeGenericEventT
    response_type : Uint8T
    extension : Uint8T
    sequence : Uint16T
    length : Uint32T
    event_type : Uint16T
    pad0 : Uint8T[22]
    full_sequence : Uint32T
  end

  struct XcbGenericErrorT
    # Type of the response
    response_type : Uint8T
    # Error code
    error_code : Uint8T
    # Sequence number
    sequence : Uint16T
    resource_id : Uint32T
    # < Resource ID for requests with side effects only
    minor_code : Uint16T
    # < Minor opcode of the failed request
    major_code : Uint8T
    # < Major opcode of the failed request
    pad0 : Uint8T
    # Padding
    pad : Uint32T[5]
    # full sequence
    full_sequence : Uint32T
  end

  struct XcbGenericEventT
    # Type of the response
    response_type : Uint8T
    # Padding
    pad0 : Uint8T
    # Sequence number
    sequence : Uint16T
    # Padding
    pad : Uint32T[7]
    # full sequence
    full_sequence : Uint32T
  end

  struct XcbGenericIteratorT
    # Data of the current iterator
    data : Void*
    # remaining elements
    rem : LibC::Int
    # index of the current iterator
    index : LibC::Int
  end

  struct XcbGetAtomNameCookieT
    sequence : LibC::UInt
  end

  struct XcbGetAtomNameReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    name_len : Uint16T
    pad1 : Uint8T[22]
  end

  struct XcbGetAtomNameRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    atom : XcbAtomT
  end

  struct XcbGetFontPathCookieT
    sequence : LibC::UInt
  end

  struct XcbGetFontPathReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    path_len : Uint16T
    pad1 : Uint8T[22]
  end

  struct XcbGetFontPathRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
  end

  struct XcbGetGeometryCookieT
    sequence : LibC::UInt
  end

  struct XcbGetGeometryReplyT
    response_type : Uint8T
    depth : Uint8T
    sequence : Uint16T
    length : Uint32T
    root : XcbWindowT
    x : Int16T
    y : Int16T
    width : Uint16T
    height : Uint16T
    border_width : Uint16T
    pad0 : Uint8T[2]
  end

  struct XcbGetGeometryRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
  end

  struct XcbGetImageCookieT
    sequence : LibC::UInt
  end

  struct XcbGetImageReplyT
    response_type : Uint8T
    depth : Uint8T
    sequence : Uint16T
    length : Uint32T
    visual : XcbVisualidT
    pad0 : Uint8T[20]
  end

  struct XcbGetImageRequestT
    major_opcode : Uint8T
    format : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
    x : Int16T
    y : Int16T
    width : Uint16T
    height : Uint16T
    plane_mask : Uint32T
  end

  struct XcbGetInputFocusCookieT
    sequence : LibC::UInt
  end

  struct XcbGetInputFocusReplyT
    response_type : Uint8T
    revert_to : Uint8T
    sequence : Uint16T
    length : Uint32T
    focus : XcbWindowT
  end

  struct XcbGetInputFocusRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
  end

  struct XcbGetKeyboardControlCookieT
    sequence : LibC::UInt
  end

  struct XcbGetKeyboardControlReplyT
    response_type : Uint8T
    global_auto_repeat : Uint8T
    sequence : Uint16T
    length : Uint32T
    led_mask : Uint32T
    key_click_percent : Uint8T
    bell_percent : Uint8T
    bell_pitch : Uint16T
    bell_duration : Uint16T
    pad0 : Uint8T[2]
    auto_repeats : Uint8T[32]
  end

  struct XcbGetKeyboardControlRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
  end

  struct XcbGetKeyboardMappingCookieT
    sequence : LibC::UInt
  end

  struct XcbGetKeyboardMappingReplyT
    response_type : Uint8T
    keysyms_per_keycode : Uint8T
    sequence : Uint16T
    length : Uint32T
    pad0 : Uint8T[24]
  end

  struct XcbGetKeyboardMappingRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    first_keycode : XcbKeycodeT
    count : Uint8T
  end

  struct XcbGetModifierMappingCookieT
    sequence : LibC::UInt
  end

  struct XcbGetModifierMappingReplyT
    response_type : Uint8T
    keycodes_per_modifier : Uint8T
    sequence : Uint16T
    length : Uint32T
    pad0 : Uint8T[24]
  end

  struct XcbGetModifierMappingRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
  end

  struct XcbGetMotionEventsCookieT
    sequence : LibC::UInt
  end

  struct XcbGetMotionEventsReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    events_len : Uint32T
    pad1 : Uint8T[20]
  end

  struct XcbGetMotionEventsRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    window : XcbWindowT
    start : XcbTimestampT
    stop : XcbTimestampT
  end

  struct XcbGetPointerControlCookieT
    sequence : LibC::UInt
  end

  struct XcbGetPointerControlReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    acceleration_numerator : Uint16T
    acceleration_denominator : Uint16T
    threshold : Uint16T
    pad1 : Uint8T[18]
  end

  struct XcbGetPointerControlRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
  end

  struct XcbGetPointerMappingCookieT
    sequence : LibC::UInt
  end

  struct XcbGetPointerMappingReplyT
    response_type : Uint8T
    map_len : Uint8T
    sequence : Uint16T
    length : Uint32T
    pad0 : Uint8T[24]
  end

  struct XcbGetPointerMappingRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
  end

  struct XcbGetPropertyCookieT
    sequence : LibC::UInt
  end

  struct XcbGetPropertyReplyT
    response_type : Uint8T
    format : Uint8T
    sequence : Uint16T
    length : Uint32T
    type : XcbAtomT
    bytes_after : Uint32T
    value_len : Uint32T
    pad0 : Uint8T[12]
  end

  struct XcbGetPropertyRequestT
    major_opcode : Uint8T
    _delete : Uint8T
    length : Uint16T
    window : XcbWindowT
    property : XcbAtomT
    type : XcbAtomT
    long_offset : Uint32T
    long_length : Uint32T
  end

  struct XcbGetScreenSaverCookieT
    sequence : LibC::UInt
  end

  struct XcbGetScreenSaverReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    timeout : Uint16T
    interval : Uint16T
    prefer_blanking : Uint8T
    allow_exposures : Uint8T
    pad1 : Uint8T[18]
  end

  struct XcbGetScreenSaverRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
  end

  struct XcbGetSelectionOwnerCookieT
    sequence : LibC::UInt
  end

  struct XcbGetSelectionOwnerReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    owner : XcbWindowT
  end

  struct XcbGetSelectionOwnerRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    selection : XcbAtomT
  end

  struct XcbGetWindowAttributesCookieT
    sequence : LibC::UInt
  end

  struct XcbGetWindowAttributesReplyT
    response_type : Uint8T
    backing_store : Uint8T
    sequence : Uint16T
    length : Uint32T
    visual : XcbVisualidT
    _class : Uint16T
    bit_gravity : Uint8T
    win_gravity : Uint8T
    backing_planes : Uint32T
    backing_pixel : Uint32T
    save_under : Uint8T
    map_is_installed : Uint8T
    map_state : Uint8T
    override_redirect : Uint8T
    colormap : XcbColormapT
    all_event_masks : Uint32T
    your_event_mask : Uint32T
    do_not_propagate_mask : Uint16T
    pad0 : Uint8T[2]
  end

  struct XcbGetWindowAttributesRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    window : XcbWindowT
  end

  struct XcbGrabButtonRequestT
    major_opcode : Uint8T
    owner_events : Uint8T
    length : Uint16T
    grab_window : XcbWindowT
    event_mask : Uint16T
    pointer_mode : Uint8T
    keyboard_mode : Uint8T
    confine_to : XcbWindowT
    cursor : XcbCursorT
    button : Uint8T
    pad0 : Uint8T
    modifiers : Uint16T
  end

  struct XcbGrabKeyRequestT
    major_opcode : Uint8T
    owner_events : Uint8T
    length : Uint16T
    grab_window : XcbWindowT
    modifiers : Uint16T
    key : XcbKeycodeT
    pointer_mode : Uint8T
    keyboard_mode : Uint8T
    pad0 : Uint8T[3]
  end

  struct XcbGrabKeyboardCookieT
    sequence : LibC::UInt
  end

  struct XcbGrabKeyboardReplyT
    response_type : Uint8T
    status : Uint8T
    sequence : Uint16T
    length : Uint32T
  end

  struct XcbGrabKeyboardRequestT
    major_opcode : Uint8T
    owner_events : Uint8T
    length : Uint16T
    grab_window : XcbWindowT
    time : XcbTimestampT
    pointer_mode : Uint8T
    keyboard_mode : Uint8T
    pad0 : Uint8T[2]
  end

  struct XcbGrabPointerCookieT
    sequence : LibC::UInt
  end

  struct XcbGrabPointerReplyT
    response_type : Uint8T
    status : Uint8T
    sequence : Uint16T
    length : Uint32T
  end

  struct XcbGrabPointerRequestT
    major_opcode : Uint8T
    owner_events : Uint8T
    length : Uint16T
    grab_window : XcbWindowT
    event_mask : Uint16T
    pointer_mode : Uint8T
    keyboard_mode : Uint8T
    confine_to : XcbWindowT
    cursor : XcbCursorT
    time : XcbTimestampT
  end

  struct XcbGrabServerRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
  end

  struct XcbGraphicsExposureEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    drawable : XcbDrawableT
    x : Uint16T
    y : Uint16T
    width : Uint16T
    height : Uint16T
    minor_opcode : Uint16T
    count : Uint16T
    major_opcode : Uint8T
    pad1 : Uint8T[3]
  end

  struct XcbGravityNotifyEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    event : XcbWindowT
    window : XcbWindowT
    x : Int16T
    y : Int16T
  end

  struct XcbHostIteratorT
    data : XcbHostT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbHostT
    family : Uint8T
    pad0 : Uint8T
    address_len : Uint16T
  end

  struct XcbIcccmGetTextPropertyReplyT
    # Store reply to avoid memory allocation, should normally not be used directly
    _reply : XcbGetPropertyReplyT*
    # Encoding used
    encoding : XcbAtomT
    # Length of the name field above
    name_len : Uint32T
    # Property value
    name : LibC::Char*
    # Format, may be 8, 16 or 32
    format : Uint8T
  end

  struct XcbIcccmGetWmClassReplyT
    # Instance name
    instance_name : LibC::Char*
    # Class of application
    class_name : LibC::Char*
    # Store reply to avoid memory allocation, should normally not be used directly
    _reply : XcbGetPropertyReplyT*
  end

  struct XcbIcccmGetWmColormapWindowsReplyT
    # Length of the windows list
    windows_len : Uint32T
    # Windows list
    windows : XcbWindowT*
    # Store reply to avoid memory allocation, should normally not be used directly
    _reply : XcbGetPropertyReplyT*
  end

  struct XcbIcccmGetWmProtocolsReplyT
    # Length of the atoms list
    atoms_len : Uint32T
    # Atoms list
    atoms : XcbAtomT*
    # Store reply to avoid memory allocation, should normally not be used directly
    _reply : XcbGetPropertyReplyT*
  end

  struct XcbIcccmWmHintsT
    # Marks which fields in this structure are defined
    flags : Int32T
    # Does this application rely on the window manager to get keyboard input?
    input : Uint32T
    # See below
    initial_state : Int32T
    # Pixmap to be used as icon
    icon_pixmap : XcbPixmapT
    # Window to be used as icon
    icon_window : XcbWindowT
    # Initial position of icon
    icon_x : Int32T
    # Initial position of icon
    icon_y : Int32T
    # Icon mask bitmap
    icon_mask : XcbPixmapT
    window_group : XcbWindowT
  end

  struct XcbImageT
    # Width in pixels, excluding pads etc.
    width : Uint16T
    # Height in pixels.
    height : Uint16T
    # Format.
    format : XcbImageFormatT
    # Right pad in bits. Valid pads are 8, 16, 32.
    scanline_pad : Uint8T
    # Depth in bits. Valid depths are 1, 4, 8, 16, 24 for z format, 1 for xy-bitmap-format, anything for xy-pixmap-format.
    depth : Uint8T
    # Storage per pixel in bits. Must be >= depth. Valid bpp are 1, 4, 8, 16, 24, 32 for z format, 1 for xy-bitmap format, anything for xy-pixmap-format.
    bpp : Uint8T
    # Scanline unit in bits for xy formats and for bpp == 1, in which case valid scanline units are 8, 16, 32. Otherwise, will be max(8, bpp). Must be >= bpp.
    unit : Uint8T
    # When format is xy-pixmap and depth > 1, this says which planes are "valid" in some vague sense. Currently used only by xcb_image_get/put_pixel(), and set only by xcb_image_get().
    plane_mask : Uint32T
    # Component byte order for z-pixmap, byte order of scanline unit for xy-bitmap and xy-pixmap. Nybble order for z-pixmap when bpp == 4.
    byte_order : XcbImageOrderT
    # Bit order of scanline unit for xy-bitmap and xy-pixmap.
    bit_order : XcbImageOrderT
    # Bytes per image row. Computable from other data, but cached for convenience/performance.
    stride : Uint32T
    # Size of image data in bytes. Computable from other data, but cached for convenience/performance.
    size : Uint32T
    # Malloced block of storage that will be freed by xcb_image_destroy() if non-null.
    base : Void*
    # The actual image.
    data : Uint8T*
  end

  struct XcbImageText16RequestT
    major_opcode : Uint8T
    string_len : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
    gc : XcbGcontextT
    x : Int16T
    y : Int16T
  end

  struct XcbImageText8RequestT
    major_opcode : Uint8T
    string_len : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
    gc : XcbGcontextT
    x : Int16T
    y : Int16T
  end

  struct XcbInstallColormapRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    cmap : XcbColormapT
  end

  struct XcbInternAtomCookieT
    sequence : LibC::UInt
  end

  struct XcbInternAtomReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    atom : XcbAtomT
  end

  struct XcbInternAtomRequestT
    major_opcode : Uint8T
    only_if_exists : Uint8T
    length : Uint16T
    name_len : Uint16T
    pad0 : Uint8T[2]
  end

  struct XcbKeyPressEventT
    response_type : Uint8T
    detail : XcbKeycodeT
    sequence : Uint16T
    time : XcbTimestampT
    root : XcbWindowT
    event : XcbWindowT
    child : XcbWindowT
    root_x : Int16T
    root_y : Int16T
    event_x : Int16T
    event_y : Int16T
    state : Uint16T
    same_screen : Uint8T
    pad0 : Uint8T
  end

  struct XcbKeycode32IteratorT
    data : XcbKeycode32T*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbKeycodeIteratorT
    data : XcbKeycodeT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbKeymapNotifyEventT
    response_type : Uint8T
    keys : Uint8T[31]
  end

  struct XcbKeysymIteratorT
    data : XcbKeysymT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbKillClientRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    resource : Uint32T
  end

  struct XcbListExtensionsCookieT
    sequence : LibC::UInt
  end

  struct XcbListExtensionsReplyT
    response_type : Uint8T
    names_len : Uint8T
    sequence : Uint16T
    length : Uint32T
    pad0 : Uint8T[24]
  end

  struct XcbListExtensionsRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
  end

  struct XcbListFontsCookieT
    sequence : LibC::UInt
  end

  struct XcbListFontsReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    names_len : Uint16T
    pad1 : Uint8T[22]
  end

  struct XcbListFontsRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    max_names : Uint16T
    pattern_len : Uint16T
  end

  struct XcbListFontsWithInfoCookieT
    sequence : LibC::UInt
  end

  struct XcbListFontsWithInfoReplyT
    response_type : Uint8T
    name_len : Uint8T
    sequence : Uint16T
    length : Uint32T
    min_bounds : XcbCharinfoT
    pad0 : Uint8T[4]
    max_bounds : XcbCharinfoT
    pad1 : Uint8T[4]
    min_char_or_byte2 : Uint16T
    max_char_or_byte2 : Uint16T
    default_char : Uint16T
    properties_len : Uint16T
    draw_direction : Uint8T
    min_byte1 : Uint8T
    max_byte1 : Uint8T
    all_chars_exist : Uint8T
    font_ascent : Int16T
    font_descent : Int16T
    replies_hint : Uint32T
  end

  struct XcbListFontsWithInfoRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    max_names : Uint16T
    pattern_len : Uint16T
  end

  struct XcbListHostsCookieT
    sequence : LibC::UInt
  end

  struct XcbListHostsReplyT
    response_type : Uint8T
    mode : Uint8T
    sequence : Uint16T
    length : Uint32T
    hosts_len : Uint16T
    pad0 : Uint8T[22]
  end

  struct XcbListHostsRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
  end

  struct XcbListInstalledColormapsCookieT
    sequence : LibC::UInt
  end

  struct XcbListInstalledColormapsReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    cmaps_len : Uint16T
    pad1 : Uint8T[22]
  end

  struct XcbListInstalledColormapsRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    window : XcbWindowT
  end

  struct XcbListPropertiesCookieT
    sequence : LibC::UInt
  end

  struct XcbListPropertiesReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    atoms_len : Uint16T
    pad1 : Uint8T[22]
  end

  struct XcbListPropertiesRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    window : XcbWindowT
  end

  struct XcbLookupColorCookieT
    sequence : LibC::UInt
  end

  struct XcbLookupColorReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    exact_red : Uint16T
    exact_green : Uint16T
    exact_blue : Uint16T
    visual_red : Uint16T
    visual_green : Uint16T
    visual_blue : Uint16T
  end

  struct XcbLookupColorRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    cmap : XcbColormapT
    name_len : Uint16T
    pad1 : Uint8T[2]
  end

  struct XcbMapNotifyEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    event : XcbWindowT
    window : XcbWindowT
    override_redirect : Uint8T
    pad1 : Uint8T[3]
  end

  struct XcbMapRequestEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    parent : XcbWindowT
    window : XcbWindowT
  end

  struct XcbMapSubwindowsRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    window : XcbWindowT
  end

  struct XcbMapWindowRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    window : XcbWindowT
  end

  struct XcbMappingNotifyEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    request : Uint8T
    first_keycode : XcbKeycodeT
    count : Uint8T
    pad1 : Uint8T
  end

  struct XcbMotionNotifyEventT
    response_type : Uint8T
    detail : Uint8T
    sequence : Uint16T
    time : XcbTimestampT
    root : XcbWindowT
    event : XcbWindowT
    child : XcbWindowT
    root_x : Int16T
    root_y : Int16T
    event_x : Int16T
    event_y : Int16T
    state : Uint16T
    same_screen : Uint8T
    pad0 : Uint8T
  end

  struct XcbNoExposureEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    drawable : XcbDrawableT
    minor_opcode : Uint16T
    major_opcode : Uint8T
    pad1 : Uint8T
  end

  struct XcbNoOperationRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
  end

  struct XcbOpenFontRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    fid : XcbFontT
    name_len : Uint16T
    pad1 : Uint8T[2]
  end

  struct XcbParamsConfigureWindowT
    x : Int32T
    y : Int32T
    width : Uint32T
    height : Uint32T
    border_width : Uint32T
    sibling : Uint32T
    stack_mode : Uint32T
  end

  struct XcbParamsCwT
    back_pixmap : Uint32T
    back_pixel : Uint32T
    border_pixmap : Uint32T
    border_pixel : Uint32T
    bit_gravity : Uint32T
    win_gravity : Uint32T
    backing_store : Uint32T
    backing_planes : Uint32T
    backing_pixel : Uint32T
    override_redirect : Uint32T
    save_under : Uint32T
    event_mask : Uint32T
    dont_propagate : Uint32T
    colormap : Uint32T
    cursor : Uint32T
  end

  struct XcbParamsGcT
    function : Uint32T
    plane_mask : Uint32T
    foreground : Uint32T
    background : Uint32T
    line_width : Uint32T
    line_style : Uint32T
    cap_style : Uint32T
    join_style : Uint32T
    fill_style : Uint32T
    fill_rule : Uint32T
    tile : Uint32T
    stipple : Uint32T
    tile_stipple_origin_x : Uint32T
    tile_stipple_origin_y : Uint32T
    font : Uint32T
    subwindow_mode : Uint32T
    graphics_exposures : Uint32T
    clip_origin_x : Uint32T
    clip_origin_y : Uint32T
    mask : Uint32T
    dash_offset : Uint32T
    dash_list : Uint32T
    arc_mode : Uint32T
  end

  struct XcbParamsKeyboardT
    key_click_percent : Uint32T
    bell_percent : Uint32T
    bell_pitch : Uint32T
    bell_duration : Uint32T
    led : Uint32T
    led_mode : Uint32T
    key : Uint32T
    auto_repeat_mode : Uint32T
  end

  struct XcbPixmapIteratorT
    data : XcbPixmapT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbPointIteratorT
    data : XcbPointT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbPointT
    x : Int16T
    y : Int16T
  end

  struct XcbPolyArcRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
    gc : XcbGcontextT
  end

  struct XcbPolyFillArcRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
    gc : XcbGcontextT
  end

  struct XcbPolyFillRectangleRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
    gc : XcbGcontextT
  end

  struct XcbPolyLineRequestT
    major_opcode : Uint8T
    coordinate_mode : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
    gc : XcbGcontextT
  end

  struct XcbPolyPointRequestT
    major_opcode : Uint8T
    coordinate_mode : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
    gc : XcbGcontextT
  end

  struct XcbPolyRectangleRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
    gc : XcbGcontextT
  end

  struct XcbPolySegmentRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
    gc : XcbGcontextT
  end

  struct XcbPolyText16RequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
    gc : XcbGcontextT
    x : Int16T
    y : Int16T
  end

  struct XcbPolyText8RequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
    gc : XcbGcontextT
    x : Int16T
    y : Int16T
  end

  struct XcbPropertyNotifyEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    window : XcbWindowT
    atom : XcbAtomT
    time : XcbTimestampT
    state : Uint8T
    pad1 : Uint8T[3]
  end

  struct XcbProtocolRequestT
    count : LibC::SizeT
    ext : XcbExtensionT*
    opcode : Uint8T
    isvoid : Uint8T
  end

  struct XcbPutImageRequestT
    major_opcode : Uint8T
    format : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
    gc : XcbGcontextT
    width : Uint16T
    height : Uint16T
    dst_x : Int16T
    dst_y : Int16T
    left_pad : Uint8T
    depth : Uint8T
    pad0 : Uint8T[2]
  end

  struct XcbQueryBestSizeCookieT
    sequence : LibC::UInt
  end

  struct XcbQueryBestSizeReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    width : Uint16T
    height : Uint16T
  end

  struct XcbQueryBestSizeRequestT
    major_opcode : Uint8T
    _class : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
    width : Uint16T
    height : Uint16T
  end

  struct XcbQueryColorsCookieT
    sequence : LibC::UInt
  end

  struct XcbQueryColorsReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    colors_len : Uint16T
    pad1 : Uint8T[22]
  end

  struct XcbQueryColorsRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    cmap : XcbColormapT
  end

  struct XcbQueryExtensionCookieT
    sequence : LibC::UInt
  end

  struct XcbQueryExtensionReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    present : Uint8T
    major_opcode : Uint8T
    first_event : Uint8T
    first_error : Uint8T
  end

  struct XcbQueryExtensionRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    name_len : Uint16T
    pad1 : Uint8T[2]
  end

  struct XcbQueryFontCookieT
    sequence : LibC::UInt
  end

  struct XcbQueryFontReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    min_bounds : XcbCharinfoT
    pad1 : Uint8T[4]
    max_bounds : XcbCharinfoT
    pad2 : Uint8T[4]
    min_char_or_byte2 : Uint16T
    max_char_or_byte2 : Uint16T
    default_char : Uint16T
    properties_len : Uint16T
    draw_direction : Uint8T
    min_byte1 : Uint8T
    max_byte1 : Uint8T
    all_chars_exist : Uint8T
    font_ascent : Int16T
    font_descent : Int16T
    char_infos_len : Uint32T
  end

  struct XcbQueryFontRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    font : XcbFontableT
  end

  struct XcbQueryKeymapCookieT
    sequence : LibC::UInt
  end

  struct XcbQueryKeymapReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    keys : Uint8T[32]
  end

  struct XcbQueryKeymapRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
  end

  struct XcbQueryPointerCookieT
    sequence : LibC::UInt
  end

  struct XcbQueryPointerReplyT
    response_type : Uint8T
    same_screen : Uint8T
    sequence : Uint16T
    length : Uint32T
    root : XcbWindowT
    child : XcbWindowT
    root_x : Int16T
    root_y : Int16T
    win_x : Int16T
    win_y : Int16T
    mask : Uint16T
    pad0 : Uint8T[2]
  end

  struct XcbQueryPointerRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    window : XcbWindowT
  end

  struct XcbQueryTextExtentsCookieT
    sequence : LibC::UInt
  end

  struct XcbQueryTextExtentsReplyT
    response_type : Uint8T
    draw_direction : Uint8T
    sequence : Uint16T
    length : Uint32T
    font_ascent : Int16T
    font_descent : Int16T
    overall_ascent : Int16T
    overall_descent : Int16T
    overall_width : Int32T
    overall_left : Int32T
    overall_right : Int32T
  end

  struct XcbQueryTextExtentsRequestT
    major_opcode : Uint8T
    odd_length : Uint8T
    length : Uint16T
    font : XcbFontableT
  end

  struct XcbQueryTreeCookieT
    sequence : LibC::UInt
  end

  struct XcbQueryTreeReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    root : XcbWindowT
    parent : XcbWindowT
    children_len : Uint16T
    pad1 : Uint8T[14]
  end

  struct XcbQueryTreeRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    window : XcbWindowT
  end

  struct XcbRecolorCursorRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    cursor : XcbCursorT
    fore_red : Uint16T
    fore_green : Uint16T
    fore_blue : Uint16T
    back_red : Uint16T
    back_green : Uint16T
    back_blue : Uint16T
  end

  struct XcbRectangleIteratorT
    data : XcbRectangleT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRectangleT
    x : Int16T
    y : Int16T
    width : Uint16T
    height : Uint16T
  end

  struct XcbRenderAddGlyphsRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    glyphset : XcbRenderGlyphsetT
    glyphs_len : Uint32T
  end

  struct XcbRenderAddTrapsRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    picture : XcbRenderPictureT
    x_off : Int16T
    y_off : Int16T
  end

  struct XcbRenderAnimcursoreltIteratorT
    data : XcbRenderAnimcursoreltT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderAnimcursoreltT
    cursor : XcbCursorT
    delay : Uint32T
  end

  struct XcbRenderChangePictureRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    picture : XcbRenderPictureT
    value_mask : Uint32T
  end

  struct XcbRenderChangePictureValueListT
    repeat : Uint32T
    alphamap : XcbRenderPictureT
    alphaxorigin : Int32T
    alphayorigin : Int32T
    clipxorigin : Int32T
    clipyorigin : Int32T
    clipmask : XcbPixmapT
    graphicsexposure : Uint32T
    subwindowmode : Uint32T
    polyedge : Uint32T
    polymode : Uint32T
    dither : XcbAtomT
    componentalpha : Uint32T
  end

  struct XcbRenderColorIteratorT
    data : XcbRenderColorT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderColorT
    red : Uint16T
    green : Uint16T
    blue : Uint16T
    alpha : Uint16T
  end

  struct XcbRenderCompositeGlyphs16RequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    op : Uint8T
    pad0 : Uint8T[3]
    src : XcbRenderPictureT
    dst : XcbRenderPictureT
    mask_format : XcbRenderPictformatT
    glyphset : XcbRenderGlyphsetT
    src_x : Int16T
    src_y : Int16T
  end

  struct XcbRenderCompositeGlyphs32RequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    op : Uint8T
    pad0 : Uint8T[3]
    src : XcbRenderPictureT
    dst : XcbRenderPictureT
    mask_format : XcbRenderPictformatT
    glyphset : XcbRenderGlyphsetT
    src_x : Int16T
    src_y : Int16T
  end

  struct XcbRenderCompositeGlyphs8RequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    op : Uint8T
    pad0 : Uint8T[3]
    src : XcbRenderPictureT
    dst : XcbRenderPictureT
    mask_format : XcbRenderPictformatT
    glyphset : XcbRenderGlyphsetT
    src_x : Int16T
    src_y : Int16T
  end

  struct XcbRenderCompositeRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    op : Uint8T
    pad0 : Uint8T[3]
    src : XcbRenderPictureT
    mask : XcbRenderPictureT
    dst : XcbRenderPictureT
    src_x : Int16T
    src_y : Int16T
    mask_x : Int16T
    mask_y : Int16T
    dst_x : Int16T
    dst_y : Int16T
    width : Uint16T
    height : Uint16T
  end

  struct XcbRenderCreateAnimCursorRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    cid : XcbCursorT
  end

  struct XcbRenderCreateConicalGradientRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    picture : XcbRenderPictureT
    center : XcbRenderPointfixT
    angle : XcbRenderFixedT
    num_stops : Uint32T
  end

  struct XcbRenderCreateCursorRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    cid : XcbCursorT
    source : XcbRenderPictureT
    x : Uint16T
    y : Uint16T
  end

  struct XcbRenderCreateGlyphSetRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    gsid : XcbRenderGlyphsetT
    format : XcbRenderPictformatT
  end

  struct XcbRenderCreateLinearGradientRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    picture : XcbRenderPictureT
    p1 : XcbRenderPointfixT
    p2 : XcbRenderPointfixT
    num_stops : Uint32T
  end

  struct XcbRenderCreatePictureRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    pid : XcbRenderPictureT
    drawable : XcbDrawableT
    format : XcbRenderPictformatT
    value_mask : Uint32T
  end

  struct XcbRenderCreatePictureValueListT
    repeat : Uint32T
    alphamap : XcbRenderPictureT
    alphaxorigin : Int32T
    alphayorigin : Int32T
    clipxorigin : Int32T
    clipyorigin : Int32T
    clipmask : XcbPixmapT
    graphicsexposure : Uint32T
    subwindowmode : Uint32T
    polyedge : Uint32T
    polymode : Uint32T
    dither : XcbAtomT
    componentalpha : Uint32T
  end

  struct XcbRenderCreateRadialGradientRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    picture : XcbRenderPictureT
    inner : XcbRenderPointfixT
    outer : XcbRenderPointfixT
    inner_radius : XcbRenderFixedT
    outer_radius : XcbRenderFixedT
    num_stops : Uint32T
  end

  struct XcbRenderCreateSolidFillRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    picture : XcbRenderPictureT
    color : XcbRenderColorT
  end

  struct XcbRenderDirectformatIteratorT
    data : XcbRenderDirectformatT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderDirectformatT
    red_shift : Uint16T
    red_mask : Uint16T
    green_shift : Uint16T
    green_mask : Uint16T
    blue_shift : Uint16T
    blue_mask : Uint16T
    alpha_shift : Uint16T
    alpha_mask : Uint16T
  end

  struct XcbRenderFillRectanglesRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    op : Uint8T
    pad0 : Uint8T[3]
    dst : XcbRenderPictureT
    color : XcbRenderColorT
  end

  struct XcbRenderFixedIteratorT
    data : XcbRenderFixedT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderFreeGlyphSetRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    glyphset : XcbRenderGlyphsetT
  end

  struct XcbRenderFreeGlyphsRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    glyphset : XcbRenderGlyphsetT
  end

  struct XcbRenderFreePictureRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    picture : XcbRenderPictureT
  end

  struct XcbRenderGlyphErrorT
    response_type : Uint8T
    error_code : Uint8T
    sequence : Uint16T
  end

  struct XcbRenderGlyphIteratorT
    data : XcbRenderGlyphT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderGlyphSetErrorT
    response_type : Uint8T
    error_code : Uint8T
    sequence : Uint16T
  end

  struct XcbRenderGlyphinfoIteratorT
    data : XcbRenderGlyphinfoT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderGlyphinfoT
    width : Uint16T
    height : Uint16T
    x : Int16T
    y : Int16T
    x_off : Int16T
    y_off : Int16T
  end

  struct XcbRenderGlyphsetIteratorT
    data : XcbRenderGlyphsetT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderIndexvalueIteratorT
    data : XcbRenderIndexvalueT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderIndexvalueT
    pixel : Uint32T
    red : Uint16T
    green : Uint16T
    blue : Uint16T
    alpha : Uint16T
  end

  struct XcbRenderLinefixIteratorT
    data : XcbRenderLinefixT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderLinefixT
    p1 : XcbRenderPointfixT
    p2 : XcbRenderPointfixT
  end

  struct XcbRenderPictFormatErrorT
    response_type : Uint8T
    error_code : Uint8T
    sequence : Uint16T
  end

  struct XcbRenderPictOpErrorT
    response_type : Uint8T
    error_code : Uint8T
    sequence : Uint16T
  end

  struct XcbRenderPictdepthIteratorT
    data : XcbRenderPictdepthT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderPictdepthT
    depth : Uint8T
    pad0 : Uint8T
    num_visuals : Uint16T
    pad1 : Uint8T[4]
  end

  struct XcbRenderPictformatIteratorT
    data : XcbRenderPictformatT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderPictforminfoIteratorT
    data : XcbRenderPictforminfoT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderPictforminfoT
    id : XcbRenderPictformatT
    type : Uint8T
    depth : Uint8T
    pad0 : Uint8T[2]
    direct : XcbRenderDirectformatT
    colormap : XcbColormapT
  end

  struct XcbRenderPictscreenIteratorT
    data : XcbRenderPictscreenT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderPictscreenT
    num_depths : Uint32T
    fallback : XcbRenderPictformatT
  end

  struct XcbRenderPictureErrorT
    response_type : Uint8T
    error_code : Uint8T
    sequence : Uint16T
  end

  struct XcbRenderPictureIteratorT
    data : XcbRenderPictureT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderPictvisualIteratorT
    data : XcbRenderPictvisualT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderPictvisualT
    visual : XcbVisualidT
    format : XcbRenderPictformatT
  end

  struct XcbRenderPointfixIteratorT
    data : XcbRenderPointfixT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderPointfixT
    x : XcbRenderFixedT
    y : XcbRenderFixedT
  end

  struct XcbRenderQueryFiltersCookieT
    sequence : LibC::UInt
  end

  struct XcbRenderQueryFiltersReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    num_aliases : Uint32T
    num_filters : Uint32T
    pad1 : Uint8T[16]
  end

  struct XcbRenderQueryFiltersRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
  end

  struct XcbRenderQueryPictFormatsCookieT
    sequence : LibC::UInt
  end

  struct XcbRenderQueryPictFormatsReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    num_formats : Uint32T
    num_screens : Uint32T
    num_depths : Uint32T
    num_visuals : Uint32T
    num_subpixel : Uint32T
    pad1 : Uint8T[4]
  end

  struct XcbRenderQueryPictFormatsRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
  end

  struct XcbRenderQueryPictIndexValuesCookieT
    sequence : LibC::UInt
  end

  struct XcbRenderQueryPictIndexValuesReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    num_values : Uint32T
    pad1 : Uint8T[20]
  end

  struct XcbRenderQueryPictIndexValuesRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    format : XcbRenderPictformatT
  end

  struct XcbRenderQueryVersionCookieT
    sequence : LibC::UInt
  end

  struct XcbRenderQueryVersionReplyT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    length : Uint32T
    major_version : Uint32T
    minor_version : Uint32T
    pad1 : Uint8T[16]
  end

  struct XcbRenderQueryVersionRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    client_major_version : Uint32T
    client_minor_version : Uint32T
  end

  struct XcbRenderReferenceGlyphSetRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    gsid : XcbRenderGlyphsetT
    existing : XcbRenderGlyphsetT
  end

  struct XcbRenderSetPictureClipRectanglesRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    picture : XcbRenderPictureT
    clip_x_origin : Int16T
    clip_y_origin : Int16T
  end

  struct XcbRenderSetPictureFilterRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    picture : XcbRenderPictureT
    filter_len : Uint16T
    pad0 : Uint8T[2]
  end

  struct XcbRenderSetPictureTransformRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    picture : XcbRenderPictureT
    transform : XcbRenderTransformT
  end

  struct XcbRenderSpanfixIteratorT
    data : XcbRenderSpanfixT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderSpanfixT
    l : XcbRenderFixedT
    r : XcbRenderFixedT
    y : XcbRenderFixedT
  end

  struct XcbRenderTransformIteratorT
    data : XcbRenderTransformT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderTransformT
    matrix11 : XcbRenderFixedT
    matrix12 : XcbRenderFixedT
    matrix13 : XcbRenderFixedT
    matrix21 : XcbRenderFixedT
    matrix22 : XcbRenderFixedT
    matrix23 : XcbRenderFixedT
    matrix31 : XcbRenderFixedT
    matrix32 : XcbRenderFixedT
    matrix33 : XcbRenderFixedT
  end

  struct XcbRenderTrapIteratorT
    data : XcbRenderTrapT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderTrapT
    top : XcbRenderSpanfixT
    bot : XcbRenderSpanfixT
  end

  struct XcbRenderTrapezoidIteratorT
    data : XcbRenderTrapezoidT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderTrapezoidT
    top : XcbRenderFixedT
    bottom : XcbRenderFixedT
    left : XcbRenderLinefixT
    right : XcbRenderLinefixT
  end

  struct XcbRenderTrapezoidsRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    op : Uint8T
    pad0 : Uint8T[3]
    src : XcbRenderPictureT
    dst : XcbRenderPictureT
    mask_format : XcbRenderPictformatT
    src_x : Int16T
    src_y : Int16T
  end

  struct XcbRenderTriFanRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    op : Uint8T
    pad0 : Uint8T[3]
    src : XcbRenderPictureT
    dst : XcbRenderPictureT
    mask_format : XcbRenderPictformatT
    src_x : Int16T
    src_y : Int16T
  end

  struct XcbRenderTriStripRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    op : Uint8T
    pad0 : Uint8T[3]
    src : XcbRenderPictureT
    dst : XcbRenderPictureT
    mask_format : XcbRenderPictformatT
    src_x : Int16T
    src_y : Int16T
  end

  struct XcbRenderTriangleIteratorT
    data : XcbRenderTriangleT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRenderTriangleT
    p1 : XcbRenderPointfixT
    p2 : XcbRenderPointfixT
    p3 : XcbRenderPointfixT
  end

  struct XcbRenderTrianglesRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    op : Uint8T
    pad0 : Uint8T[3]
    src : XcbRenderPictureT
    dst : XcbRenderPictureT
    mask_format : XcbRenderPictformatT
    src_x : Int16T
    src_y : Int16T
  end

  struct XcbReparentNotifyEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    event : XcbWindowT
    window : XcbWindowT
    parent : XcbWindowT
    x : Int16T
    y : Int16T
    override_redirect : Uint8T
    pad1 : Uint8T[3]
  end

  struct XcbReparentWindowRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    window : XcbWindowT
    parent : XcbWindowT
    x : Int16T
    y : Int16T
  end

  struct XcbRequestErrorT
    response_type : Uint8T
    error_code : Uint8T
    sequence : Uint16T
    bad_value : Uint32T
    minor_opcode : Uint16T
    major_opcode : Uint8T
    pad0 : Uint8T
  end

  struct XcbResizeRequestEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    window : XcbWindowT
    width : Uint16T
    height : Uint16T
  end

  struct XcbRgbIteratorT
    data : XcbRgbT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbRgbT
    red : Uint16T
    green : Uint16T
    blue : Uint16T
    pad0 : Uint8T[2]
  end

  struct XcbRotatePropertiesRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    window : XcbWindowT
    atoms_len : Uint16T
    delta : Int16T
  end

  struct XcbScreenIteratorT
    data : XcbScreenT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbScreenT
    root : XcbWindowT
    default_colormap : XcbColormapT
    white_pixel : Uint32T
    black_pixel : Uint32T
    current_input_masks : Uint32T
    width_in_pixels : Uint16T
    height_in_pixels : Uint16T
    width_in_millimeters : Uint16T
    height_in_millimeters : Uint16T
    min_installed_maps : Uint16T
    max_installed_maps : Uint16T
    root_visual : XcbVisualidT
    backing_stores : Uint8T
    save_unders : Uint8T
    root_depth : Uint8T
    allowed_depths_len : Uint8T
  end

  struct XcbSegmentIteratorT
    data : XcbSegmentT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbSegmentT
    x1 : Int16T
    y1 : Int16T
    x2 : Int16T
    y2 : Int16T
  end

  struct XcbSelectionClearEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    time : XcbTimestampT
    owner : XcbWindowT
    selection : XcbAtomT
  end

  struct XcbSelectionNotifyEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    time : XcbTimestampT
    requestor : XcbWindowT
    selection : XcbAtomT
    target : XcbAtomT
    property : XcbAtomT
  end

  struct XcbSelectionRequestEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    time : XcbTimestampT
    owner : XcbWindowT
    requestor : XcbWindowT
    selection : XcbAtomT
    target : XcbAtomT
    property : XcbAtomT
  end

  struct XcbSendEventRequestT
    major_opcode : Uint8T
    propagate : Uint8T
    length : Uint16T
    destination : XcbWindowT
    event_mask : Uint32T
    event : LibC::Char[32]
  end

  struct XcbSetAccessControlRequestT
    major_opcode : Uint8T
    mode : Uint8T
    length : Uint16T
  end

  struct XcbSetClipRectanglesRequestT
    major_opcode : Uint8T
    ordering : Uint8T
    length : Uint16T
    gc : XcbGcontextT
    clip_x_origin : Int16T
    clip_y_origin : Int16T
  end

  struct XcbSetCloseDownModeRequestT
    major_opcode : Uint8T
    mode : Uint8T
    length : Uint16T
  end

  struct XcbSetDashesRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    gc : XcbGcontextT
    dash_offset : Uint16T
    dashes_len : Uint16T
  end

  struct XcbSetFontPathRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    font_qty : Uint16T
    pad1 : Uint8T[2]
  end

  struct XcbSetInputFocusRequestT
    major_opcode : Uint8T
    revert_to : Uint8T
    length : Uint16T
    focus : XcbWindowT
    time : XcbTimestampT
  end

  struct XcbSetModifierMappingCookieT
    sequence : LibC::UInt
  end

  struct XcbSetModifierMappingReplyT
    response_type : Uint8T
    status : Uint8T
    sequence : Uint16T
    length : Uint32T
  end

  struct XcbSetModifierMappingRequestT
    major_opcode : Uint8T
    keycodes_per_modifier : Uint8T
    length : Uint16T
  end

  struct XcbSetPointerMappingCookieT
    sequence : LibC::UInt
  end

  struct XcbSetPointerMappingReplyT
    response_type : Uint8T
    status : Uint8T
    sequence : Uint16T
    length : Uint32T
  end

  struct XcbSetPointerMappingRequestT
    major_opcode : Uint8T
    map_len : Uint8T
    length : Uint16T
  end

  struct XcbSetScreenSaverRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    timeout : Int16T
    interval : Int16T
    prefer_blanking : Uint8T
    allow_exposures : Uint8T
  end

  struct XcbSetSelectionOwnerRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    owner : XcbWindowT
    selection : XcbAtomT
    time : XcbTimestampT
  end

  struct XcbSetupAuthenticateIteratorT
    data : XcbSetupAuthenticateT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbSetupAuthenticateT
    status : Uint8T
    pad0 : Uint8T[5]
    length : Uint16T
  end

  struct XcbSetupFailedIteratorT
    data : XcbSetupFailedT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbSetupFailedT
    status : Uint8T
    reason_len : Uint8T
    protocol_major_version : Uint16T
    protocol_minor_version : Uint16T
    length : Uint16T
  end

  struct XcbSetupIteratorT
    data : XcbSetupT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbSetupRequestIteratorT
    data : XcbSetupRequestT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbSetupRequestT
    byte_order : Uint8T
    pad0 : Uint8T
    protocol_major_version : Uint16T
    protocol_minor_version : Uint16T
    authorization_protocol_name_len : Uint16T
    authorization_protocol_data_len : Uint16T
    pad1 : Uint8T[2]
  end

  struct XcbSetupT
    status : Uint8T
    pad0 : Uint8T
    protocol_major_version : Uint16T
    protocol_minor_version : Uint16T
    length : Uint16T
    release_number : Uint32T
    resource_id_base : Uint32T
    resource_id_mask : Uint32T
    motion_buffer_size : Uint32T
    vendor_len : Uint16T
    maximum_request_length : Uint16T
    roots_len : Uint8T
    pixmap_formats_len : Uint8T
    image_byte_order : Uint8T
    bitmap_format_bit_order : Uint8T
    bitmap_format_scanline_unit : Uint8T
    bitmap_format_scanline_pad : Uint8T
    min_keycode : XcbKeycodeT
    max_keycode : XcbKeycodeT
    pad1 : Uint8T[4]
  end

  struct XcbShmAttachFdRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    shmseg : XcbShmSegT
    read_only : Uint8T
    pad0 : Uint8T[3]
  end

  struct XcbShmAttachRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    shmseg : XcbShmSegT
    shmid : Uint32T
    read_only : Uint8T
    pad0 : Uint8T[3]
  end

  struct XcbShmCompletionEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    drawable : XcbDrawableT
    minor_event : Uint16T
    major_event : Uint8T
    pad1 : Uint8T
    shmseg : XcbShmSegT
    offset : Uint32T
  end

  struct XcbShmCreatePixmapRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    pid : XcbPixmapT
    drawable : XcbDrawableT
    width : Uint16T
    height : Uint16T
    depth : Uint8T
    pad0 : Uint8T[3]
    shmseg : XcbShmSegT
    offset : Uint32T
  end

  struct XcbShmCreateSegmentCookieT
    sequence : LibC::UInt
  end

  struct XcbShmCreateSegmentReplyT
    response_type : Uint8T
    nfd : Uint8T
    sequence : Uint16T
    length : Uint32T
    pad0 : Uint8T[24]
  end

  struct XcbShmCreateSegmentRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    shmseg : XcbShmSegT
    size : Uint32T
    read_only : Uint8T
    pad0 : Uint8T[3]
  end

  struct XcbShmDetachRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    shmseg : XcbShmSegT
  end

  struct XcbShmGetImageCookieT
    sequence : LibC::UInt
  end

  struct XcbShmGetImageReplyT
    response_type : Uint8T
    depth : Uint8T
    sequence : Uint16T
    length : Uint32T
    visual : XcbVisualidT
    size : Uint32T
  end

  struct XcbShmGetImageRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
    x : Int16T
    y : Int16T
    width : Uint16T
    height : Uint16T
    plane_mask : Uint32T
    format : Uint8T
    pad0 : Uint8T[3]
    shmseg : XcbShmSegT
    offset : Uint32T
  end

  struct XcbShmPutImageRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
    drawable : XcbDrawableT
    gc : XcbGcontextT
    total_width : Uint16T
    total_height : Uint16T
    src_x : Uint16T
    src_y : Uint16T
    src_width : Uint16T
    src_height : Uint16T
    dst_x : Int16T
    dst_y : Int16T
    depth : Uint8T
    format : Uint8T
    send_event : Uint8T
    pad0 : Uint8T
    shmseg : XcbShmSegT
    offset : Uint32T
  end

  struct XcbShmQueryVersionCookieT
    sequence : LibC::UInt
  end

  struct XcbShmQueryVersionReplyT
    response_type : Uint8T
    shared_pixmaps : Uint8T
    sequence : Uint16T
    length : Uint32T
    major_version : Uint16T
    minor_version : Uint16T
    uid : Uint16T
    gid : Uint16T
    pixmap_format : Uint8T
    pad0 : Uint8T[15]
  end

  struct XcbShmQueryVersionRequestT
    major_opcode : Uint8T
    minor_opcode : Uint8T
    length : Uint16T
  end

  struct XcbShmSegIteratorT
    data : XcbShmSegT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbShmSegmentInfoT
    shmseg : XcbShmSegT
    shmid : Uint32T
    shmaddr : Uint8T*
  end

  struct XcbSizeHintsT
    # User specified flags
    flags : Uint32T
    # User-specified position
    x : Int32T
    # User-specified position
    y : Int32T
    # User-specified size
    width : Int32T
    # User-specified size
    height : Int32T
    # Program-specified minimum size
    min_width : Int32T
    # Program-specified minimum size
    min_height : Int32T
    # Program-specified maximum size
    max_width : Int32T
    # Program-specified maximum size
    max_height : Int32T
    # Program-specified resize increments
    width_inc : Int32T
    # Program-specified resize increments
    height_inc : Int32T
    # Program-specified minimum aspect ratios
    min_aspect_num : Int32T
    # Program-specified minimum aspect ratios
    min_aspect_den : Int32T
    # Program-specified maximum aspect ratios
    max_aspect_num : Int32T
    # Program-specified maximum aspect ratios
    max_aspect_den : Int32T
    # Program-specified base size
    base_width : Int32T
    # Program-specified base size
    base_height : Int32T
    # Program-specified window gravity
    win_gravity : Uint32T
  end

  struct XcbStoreColorsRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    cmap : XcbColormapT
  end

  struct XcbStoreNamedColorRequestT
    major_opcode : Uint8T
    flags : Uint8T
    length : Uint16T
    cmap : XcbColormapT
    pixel : Uint32T
    name_len : Uint16T
    pad0 : Uint8T[2]
  end

  struct XcbStrIteratorT
    data : XcbStrT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbStrT
    name_len : Uint8T
  end

  struct XcbTimecoordIteratorT
    data : XcbTimecoordT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbTimecoordT
    time : XcbTimestampT
    x : Int16T
    y : Int16T
  end

  struct XcbTimestampIteratorT
    data : XcbTimestampT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbTranslateCoordinatesCookieT
    sequence : LibC::UInt
  end

  struct XcbTranslateCoordinatesReplyT
    response_type : Uint8T
    same_screen : Uint8T
    sequence : Uint16T
    length : Uint32T
    child : XcbWindowT
    dst_x : Int16T
    dst_y : Int16T
  end

  struct XcbTranslateCoordinatesRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    src_window : XcbWindowT
    dst_window : XcbWindowT
    src_x : Int16T
    src_y : Int16T
  end

  struct XcbUngrabButtonRequestT
    major_opcode : Uint8T
    button : Uint8T
    length : Uint16T
    grab_window : XcbWindowT
    modifiers : Uint16T
    pad0 : Uint8T[2]
  end

  struct XcbUngrabKeyRequestT
    major_opcode : Uint8T
    key : XcbKeycodeT
    length : Uint16T
    grab_window : XcbWindowT
    modifiers : Uint16T
    pad0 : Uint8T[2]
  end

  struct XcbUngrabKeyboardRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    time : XcbTimestampT
  end

  struct XcbUngrabPointerRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    time : XcbTimestampT
  end

  struct XcbUngrabServerRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
  end

  struct XcbUninstallColormapRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    cmap : XcbColormapT
  end

  struct XcbUnmapNotifyEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    event : XcbWindowT
    window : XcbWindowT
    from_configure : Uint8T
    pad1 : Uint8T[3]
  end

  struct XcbUnmapSubwindowsRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    window : XcbWindowT
  end

  struct XcbUnmapWindowRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    window : XcbWindowT
  end

  struct XcbValueErrorT
    response_type : Uint8T
    error_code : Uint8T
    sequence : Uint16T
    bad_value : Uint32T
    minor_opcode : Uint16T
    major_opcode : Uint8T
    pad0 : Uint8T
  end

  struct XcbVisibilityNotifyEventT
    response_type : Uint8T
    pad0 : Uint8T
    sequence : Uint16T
    window : XcbWindowT
    state : Uint8T
    pad1 : Uint8T[3]
  end

  struct XcbVisualidIteratorT
    data : XcbVisualidT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbVisualtypeIteratorT
    data : XcbVisualtypeT*
    rem : LibC::Int
    index : LibC::Int
  end

  struct XcbVisualtypeT
    visual_id : XcbVisualidT
    _class : Uint8T
    bits_per_rgb_value : Uint8T
    colormap_entries : Uint16T
    red_mask : Uint32T
    green_mask : Uint32T
    blue_mask : Uint32T
    pad0 : Uint8T[4]
  end

  struct XcbVoidCookieT
    # Sequence number
    sequence : LibC::UInt
  end

  struct XcbWarpPointerRequestT
    major_opcode : Uint8T
    pad0 : Uint8T
    length : Uint16T
    src_window : XcbWindowT
    dst_window : XcbWindowT
    src_x : Int16T
    src_y : Int16T
    src_width : Uint16T
    src_height : Uint16T
    dst_x : Int16T
    dst_y : Int16T
  end

  struct XcbWindowIteratorT
    data : XcbWindowT*
    rem : LibC::Int
    index : LibC::Int
  end

  type XcbConnectionT = Void*
  type XcbCursorContextT = Void*
  type XcbKeySymbolsT = Void*
  type XcbRenderUtilCompositeTextStreamT = Void*
  type XcbSpecialEventT = Void*
  type XcbXrmDatabaseT = Void*

  union XcbClientMessageDataT
    data8 : Uint8T[20]
    data16 : Uint16T[10]
    data32 : Uint32T[5]
  end
end
